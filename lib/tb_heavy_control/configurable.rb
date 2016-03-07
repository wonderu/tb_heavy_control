module TbHeavyControl
  module Configurable
    attr_reader :load_order

    def config(&block)
      raise 'tb_heavy_control config cannot run without block' if block.nil?
      @load_order ||= []
      @context = Rails.root.join('app', 'concepts')
      instance_eval(&block)
    end

    private

    def load_file(original_path)
      array_form    = Array(original_path).map(&:to_s)
      last_element  = array_form.last

      array_form[-1] = last_element + '.rb' unless last_element[-3..-1] == '.rb'

      path = @context.join(*array_form)
      raise "Cannot find file: #{path}" unless path.file?
      @load_order << path unless @load_order.include?(path)
    end

    def context(path)
      previous_context = @context
      @context = previous_context.join(*Array(path))
      raise "#{@context} isn't a directory" unless @context.directory?
      yield
      @context = previous_context
    end

    def load_folder(original_path = '')
      array_form  = Array(original_path)
      folder      = @context.join(*array_form)
      raise "#{folder} isn't a directory" unless folder.directory?

      rb_files = folder.entries.select { |pn| pn.to_s[-3..-1] == '.rb' }
      rb_files.each { |file| load_file folder.join(file) }
    end
  end
end
