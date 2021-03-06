# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{analytical}
  s.version = "1.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Joshua Krall"]
  s.date = %q{2010-07-23}
  s.description = %q{Gem for managing multiple analytics services in your rails app.}
  s.email = %q{josh@transfs.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "analytical.gemspec",
     "example/.gitignore",
     "example/Gemfile",
     "example/README",
     "example/Rakefile",
     "example/app/controllers/application_controller.rb",
     "example/app/controllers/page_controller.rb",
     "example/app/helpers/application_helper.rb",
     "example/app/helpers/page_helper.rb",
     "example/app/views/layouts/application.html.erb",
     "example/app/views/page/index.html.erb",
     "example/app/views/page/test_a.html.erb",
     "example/app/views/page/test_b.html.erb",
     "example/config.ru",
     "example/config/analytical.yml",
     "example/config/application.rb",
     "example/config/boot.rb",
     "example/config/database.yml",
     "example/config/environment.rb",
     "example/config/environments/development.rb",
     "example/config/environments/production.rb",
     "example/config/environments/test.rb",
     "example/config/initializers/backtrace_silencers.rb",
     "example/config/initializers/inflections.rb",
     "example/config/initializers/mime_types.rb",
     "example/config/initializers/secret_token.rb",
     "example/config/initializers/session_store.rb",
     "example/config/locales/en.yml",
     "example/config/routes.rb",
     "example/db/seeds.rb",
     "example/doc/README_FOR_APP",
     "example/lib/tasks/.gitkeep",
     "example/public/404.html",
     "example/public/422.html",
     "example/public/500.html",
     "example/public/favicon.ico",
     "example/public/images/rails.png",
     "example/public/javascripts/application.js",
     "example/public/javascripts/controls.js",
     "example/public/javascripts/dragdrop.js",
     "example/public/javascripts/effects.js",
     "example/public/javascripts/prototype.js",
     "example/public/javascripts/rails.js",
     "example/public/robots.txt",
     "example/public/stylesheets/.gitkeep",
     "example/script/rails",
     "example/test/functional/page_controller_test.rb",
     "example/test/performance/browsing_test.rb",
     "example/test/test_helper.rb",
     "example/test/unit/helpers/page_helper_test.rb",
     "example/vendor/plugins/.gitkeep",
     "lib/analytical.rb",
     "lib/analytical/adwords.rb",
     "lib/analytical/api.rb",
     "lib/analytical/base.rb",
     "lib/analytical/bot_detector.rb",
     "lib/analytical/clicky.rb",
     "lib/analytical/console.rb",
     "lib/analytical/crazy_egg.rb",
     "lib/analytical/google.rb",
     "lib/analytical/hubspot.rb",
     "lib/analytical/kiss_metrics.rb",
     "rails/init.rb",
     "spec/analytical/api_spec.rb",
     "spec/analytical/base_spec.rb",
     "spec/analytical/bot_detector_spec.rb",
     "spec/analytical/clicky_spec.rb",
     "spec/analytical/google_spec.rb",
     "spec/analytical/kiss_metrics_spec.rb",
     "spec/analytical_spec.rb",
     "spec/config/analytical.yml",
     "spec/spec.opts",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/jkrall/analytical}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Gem for managing multiple analytics services in your rails app.}
  s.test_files = [
    "spec/analytical/api_spec.rb",
     "spec/analytical/base_spec.rb",
     "spec/analytical/bot_detector_spec.rb",
     "spec/analytical/clicky_spec.rb",
     "spec/analytical/google_spec.rb",
     "spec/analytical/kiss_metrics_spec.rb",
     "spec/analytical_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 1.2.9"])
      s.add_runtime_dependency(%q<activesupport>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 1.2.9"])
      s.add_dependency(%q<activesupport>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.2.9"])
    s.add_dependency(%q<activesupport>, [">= 0"])
  end
end

