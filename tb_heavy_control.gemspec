# -*- encoding: utf-8 -*-
# stub: tb_heavy_control 0.0.5 ruby lib

Gem::Specification.new do |s|
  s.name = "tb_heavy_control".freeze
  s.version = "0.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Roman Kolesnev".freeze, "Anton Sokolov".freeze]
  s.date = "2023-01-20"
  s.description = "Autoloading makes some things too difficult. I prefer prerequiring all thing which i need in order i want.".freeze
  s.email = ["rvkolesnev@gmail.com".freeze, "profox.rus@gmail.com".freeze]
  s.files = ["MIT-LICENSE".freeze, "Rakefile".freeze, "lib/tasks".freeze, "lib/tasks/tb_heavy_control_tasks.rake".freeze, "lib/tb_heavy_control".freeze, "lib/tb_heavy_control.rb".freeze, "lib/tb_heavy_control/configurable.rb".freeze, "lib/tb_heavy_control/loader.rb".freeze, "lib/tb_heavy_control/railtie.rb".freeze, "lib/tb_heavy_control/version.rb".freeze, "lib/trailblazer".freeze, "lib/trailblazer/operation".freeze, "lib/trailblazer/operation/controller".freeze, "lib/trailblazer/operation/controller/active_record.rb".freeze, "lib/trailblazer/operation/model".freeze, "lib/trailblazer/operation/model/active_model.rb".freeze, "lib/trailblazer/operation/responder.rb".freeze, "lib/trailblazer/operation/worker.rb".freeze, "test/dummy".freeze, "test/dummy/README.rdoc".freeze, "test/dummy/Rakefile".freeze, "test/dummy/app".freeze, "test/dummy/app/assets".freeze, "test/dummy/app/assets/images".freeze, "test/dummy/app/assets/javascripts".freeze, "test/dummy/app/assets/javascripts/application.js".freeze, "test/dummy/app/assets/stylesheets".freeze, "test/dummy/app/assets/stylesheets/application.css".freeze, "test/dummy/app/controllers".freeze, "test/dummy/app/controllers/application_controller.rb".freeze, "test/dummy/app/controllers/concerns".freeze, "test/dummy/app/helpers".freeze, "test/dummy/app/helpers/application_helper.rb".freeze, "test/dummy/app/mailers".freeze, "test/dummy/app/models".freeze, "test/dummy/app/models/concerns".freeze, "test/dummy/app/views".freeze, "test/dummy/app/views/layouts".freeze, "test/dummy/app/views/layouts/application.html.erb".freeze, "test/dummy/bin".freeze, "test/dummy/bin/bundle".freeze, "test/dummy/bin/rails".freeze, "test/dummy/bin/rake".freeze, "test/dummy/bin/setup".freeze, "test/dummy/config".freeze, "test/dummy/config.ru".freeze, "test/dummy/config/application.rb".freeze, "test/dummy/config/boot.rb".freeze, "test/dummy/config/database.yml".freeze, "test/dummy/config/environment.rb".freeze, "test/dummy/config/environments".freeze, "test/dummy/config/environments/development.rb".freeze, "test/dummy/config/environments/production.rb".freeze, "test/dummy/config/environments/test.rb".freeze, "test/dummy/config/initializers".freeze, "test/dummy/config/initializers/assets.rb".freeze, "test/dummy/config/initializers/backtrace_silencers.rb".freeze, "test/dummy/config/initializers/cookies_serializer.rb".freeze, "test/dummy/config/initializers/filter_parameter_logging.rb".freeze, "test/dummy/config/initializers/inflections.rb".freeze, "test/dummy/config/initializers/mime_types.rb".freeze, "test/dummy/config/initializers/session_store.rb".freeze, "test/dummy/config/initializers/wrap_parameters.rb".freeze, "test/dummy/config/locales".freeze, "test/dummy/config/locales/en.yml".freeze, "test/dummy/config/routes.rb".freeze, "test/dummy/config/secrets.yml".freeze, "test/dummy/lib".freeze, "test/dummy/lib/assets".freeze, "test/dummy/log".freeze, "test/dummy/public".freeze, "test/dummy/public/404.html".freeze, "test/dummy/public/422.html".freeze, "test/dummy/public/500.html".freeze, "test/dummy/public/favicon.ico".freeze, "test/tb_heavy_control_test.rb".freeze, "test/test_helper.rb".freeze]
  s.homepage = "https://github.com/afuno/tb_heavy_control".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.3.1".freeze
  s.summary = "Trailblazer loader and integration for Rails (without autoloading)".freeze
  s.test_files = ["test/tb_heavy_control_test.rb".freeze, "test/test_helper.rb".freeze, "test/dummy".freeze, "test/dummy/config.ru".freeze, "test/dummy/log".freeze, "test/dummy/config".freeze, "test/dummy/config/application.rb".freeze, "test/dummy/config/database.yml".freeze, "test/dummy/config/secrets.yml".freeze, "test/dummy/config/locales".freeze, "test/dummy/config/locales/en.yml".freeze, "test/dummy/config/environment.rb".freeze, "test/dummy/config/environments".freeze, "test/dummy/config/environments/development.rb".freeze, "test/dummy/config/environments/test.rb".freeze, "test/dummy/config/environments/production.rb".freeze, "test/dummy/config/initializers".freeze, "test/dummy/config/initializers/wrap_parameters.rb".freeze, "test/dummy/config/initializers/backtrace_silencers.rb".freeze, "test/dummy/config/initializers/assets.rb".freeze, "test/dummy/config/initializers/mime_types.rb".freeze, "test/dummy/config/initializers/cookies_serializer.rb".freeze, "test/dummy/config/initializers/filter_parameter_logging.rb".freeze, "test/dummy/config/initializers/session_store.rb".freeze, "test/dummy/config/initializers/inflections.rb".freeze, "test/dummy/config/routes.rb".freeze, "test/dummy/config/boot.rb".freeze, "test/dummy/app".freeze, "test/dummy/app/views".freeze, "test/dummy/app/views/layouts".freeze, "test/dummy/app/views/layouts/application.html.erb".freeze, "test/dummy/app/models".freeze, "test/dummy/app/models/concerns".freeze, "test/dummy/app/helpers".freeze, "test/dummy/app/helpers/application_helper.rb".freeze, "test/dummy/app/assets".freeze, "test/dummy/app/assets/images".freeze, "test/dummy/app/assets/javascripts".freeze, "test/dummy/app/assets/javascripts/application.js".freeze, "test/dummy/app/assets/stylesheets".freeze, "test/dummy/app/assets/stylesheets/application.css".freeze, "test/dummy/app/controllers".freeze, "test/dummy/app/controllers/concerns".freeze, "test/dummy/app/controllers/application_controller.rb".freeze, "test/dummy/app/mailers".freeze, "test/dummy/bin".freeze, "test/dummy/bin/bundle".freeze, "test/dummy/bin/rails".freeze, "test/dummy/bin/setup".freeze, "test/dummy/bin/rake".freeze, "test/dummy/Rakefile".freeze, "test/dummy/README.rdoc".freeze, "test/dummy/public".freeze, "test/dummy/public/404.html".freeze, "test/dummy/public/500.html".freeze, "test/dummy/public/favicon.ico".freeze, "test/dummy/public/422.html".freeze, "test/dummy/lib".freeze, "test/dummy/lib/assets".freeze]

  s.installed_by_version = "3.0.3.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>.freeze, ["~> 5.2.0"])
      s.add_runtime_dependency(%q<trailblazer>.freeze, [">= 1.1.0"])
      s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rails>.freeze, ["~> 5.2.0"])
      s.add_dependency(%q<trailblazer>.freeze, [">= 1.1.0"])
      s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>.freeze, ["~> 5.2.0"])
    s.add_dependency(%q<trailblazer>.freeze, [">= 1.1.0"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
  end
end
