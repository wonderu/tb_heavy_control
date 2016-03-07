require 'tb_heavy_control/loader'

module TbHeavyControl
  class Railtie < Rails::Railtie
    def self.concepts_loader(_app)
      TbHeavyControl::Loader.call
    end

    # initializer 'tb_heavy_control.disable_eager_loading', before: :set_load_path do |app|
    #   path = app.root.join('app', 'concepts').to_s
    #
    #   app.config.eager_load_paths -= [path]
    # end

    # this initializer is a copy from trailblazer-rails gem
    initializer 'tb_heavy_control.trailblazer-rails_stuff' do
      require 'trailblazer/autoloading'

      require 'trailblazer/operation/model'
      require 'trailblazer/operation/model/active_model'
      Trailblazer::Operation::Model::DSL.module_eval do
        include Trailblazer::Operation::Model::ActiveModel # ::contract.
      end

      Trailblazer::Operation.class_eval do
        autoload :Responder, 'trailblazer/operation/responder'
      end
    end

    initializer 'tb_heavy_control.concepts_loader', after: :load_config_initializers do |app|
      ActionDispatch::Reloader.to_prepare do
        TbHeavyControl::Railtie.concepts_loader(app)
      end
    end
  end
end
