module TbHeavyControl
  module Loader
    class << self
      def call
        @order = TbHeavyControl.load_order
        @order.each do |path|
          require path.to_s
        end
      end
    end
  end
end
