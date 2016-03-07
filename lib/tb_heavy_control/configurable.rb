module TbHeavyControl
  module Configurable
    CONST_CHECK_SKIP = %w(operations views concepts).freeze

    attr_reader :pipeline

    def config(&block)
      raise 'tb_heavy_control config cannot run without block' if block.nil?
      @pipeline ||= [] # Pathname means load file, String - check constant
      @context = Rails.root.join('app', 'concepts')
      instance_eval(&block)
    end

    private

    # DSL methods

    def getrb(original_path)
      array_form = normalize(original_path)

      last = array_form.last
      array_form[-1] = last + '.rb' if last[-3..-1] != '.rb'

      path = @context.join(*array_form)
      raise "Cannot find file: #{path}" unless path.file?

      @pipeline << path unless @pipeline.include?(path)
    end

    def context(path)
      previous_context = @context
      @context = previous_context.join(*normalize(path))
      raise "#{@context} isn't a directory" unless @context.directory?
      check_constant_for(@context)
      yield
      @context = previous_context
    end

    def folder(original_path = '')
      folder = @context.join(*normalize(original_path))
      raise "#{folder} isn't a directory" unless folder.directory?

      rb_files = folder.children.select { |pn| pn.extname == '.rb' }
      check_constant_for(folder) if rb_files.any?
      rb_files.each { |file| getrb file }
    end

    def recursive(original_path = '', reverse: false)
      folder = @context.join(*normalize(original_path))
      raise "#{folder} isn't a directory" unless folder.directory?

      folder original_path unless reverse
      context original_path do
        # exclude '.' and '..' entries
        folder.children.select(&:directory?).each do |child_folder|
          next if child_folder.basename == 'views'
          recursive child_folder.basename, reverse: reverse
        end
      end
      folder original_path if reverse
    end

    # Helper methods

    def check_constant_for(folder) # rubocop:disable Metrics/AbcSize (15.5)
      return if CONST_CHECK_SKIP.include? folder.basename.to_s

      subpath = []
      while folder.basename.to_s != 'concepts'
        subpath << folder.basename
        folder = folder.parent
      end

      const_name = subpath.reverse.map(&:to_s).map(&:camelize).join('::')

      @pipeline << const_name unless @pipeline.include? const_name
    end

    def normalize(arg)
      Array(arg).map(&:to_s)
    end
  end
end
