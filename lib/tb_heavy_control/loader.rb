module TbHeavyControl
  module Loader
    class << self
      def call
        @order = TbHeavyControl.pipeline
        @order.each do |entry|
          case entry
          when Pathname then require_dependency(entry.to_s)
          when String   then check_constant(entry)
          end
        end
      end

      def check_constant(const_name)
        const_name.constantize
      rescue NameError
        parent          = const_name.deconstantize.constantize
        new_module_name = const_name.demodulize
        parent.const_set(new_module_name, Module.new)
      end
    end
  end
end
