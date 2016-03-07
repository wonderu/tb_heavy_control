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
      relative_path = Pathname.new('').join(*Array(original_path))
      path = Rails.root.join 'app', 'concepts', relative_path
      raise "Connot find file: #{path}" unless path.file?
      @load_order << path
    end
  end
end
