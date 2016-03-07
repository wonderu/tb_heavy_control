require 'tb_heavy_control/loader'

module TbHeavyControl
  class Railtie < Rails::Railtie
    def self.concepts_loader(_app)
      TbHeavyControl::Loader.call
    end

    initializer 'tb_heavy_control.disable_eager_loading', before: :set_load_path do |app|
      path = app.root.join('app', 'concepts').to_s

      app.config.eager_load_paths -= [path]
    end

    initializer 'tb_heavy_control.concepts_loader', after: :load_config_initializers do |app|
      ActionDispatch::Reloader.to_prepare do
        TbHeavyControl::Railtie.concepts_loader(app)
      end
    end
  end
end
