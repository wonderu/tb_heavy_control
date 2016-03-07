module TbHeavyControl
  module Configurable
    attr_reader :load_order

    def config(&block)
      raise 'tb_heavy_control config cannot run without block' if block.nil?
      @load_order ||= []
      instance_eval(&block)
    end

    private

    def load_file(original_path)
      array_form    = Array(original_path)
      last_element  = array_form.last

      array_form[-1] = last_element + '.rb' unless last_element[-3..-1] == '.rb'

      relative_path = Pathname.new('').join(*array_form)
      path = Rails.root.join 'app', 'concepts', relative_path
      raise "Cannot find file: #{path}" unless path.file?
      @load_order << path
    end
  end
end
