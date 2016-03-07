module TbHeavyControl
  module Loader
    class << self
      def call
        @order = TbHeavyControl.pipeline
        @order.each do |entry|
          case entry
          when Pathname then load_file(entry.to_s)
          when String   then check_constant(entry)
          end
        end
      end

      private

      def load_file(file)
        Rails.logger.debug "tb_heavy_control: load file '#{file}'" if TbHeavyControl.debug
        require_dependency file
      end

      def check_constant(const_name)
        Rails.logger.debug "tb_heavy_control: check constant '#{const_name}'" if TbHeavyControl.debug
        const_name.constantize
      rescue NameError
        parent = resolve_parent(const_name)

        new_module_name = const_name.demodulize
        Rails.logger.debug "tb_heavy_control: create module '#{const_name}'" if TbHeavyControl.debug
        parent.const_set(new_module_name, Module.new)
      end

      def resolve_parent(const_name)
        parent_str = const_name.deconstantize
        case parent_str
        when '', '::' then Object
        else parent_str.constantize
        end
      end
    end
  end
end
