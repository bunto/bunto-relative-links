require_relative "../lib/bunto-relative-links"

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.filter_run_when_matching :focus
  config.example_status_persistence_file_path = "spec/examples.txt"
  config.disable_monkey_patching!
  config.default_formatter = "doc" if config.files_to_run.one?
  config.order = :random
  Kernel.srand config.seed
end

Bunto.logger.adjust_verbosity(:quiet => true)

def fixture_path(fixture)
  File.expand_path "./fixtures/#{fixture}", File.dirname(__FILE__)
end

def fixture_site(fixture, overrides = {})
  default_config = { "source" => fixture_path(fixture) }
  config = Bunto::Utils.deep_merge_hashes(default_config, overrides)
  config = Bunto.configuration(config)
  Bunto::Site.new(config)
end

def page_by_path(site, path)
  site.pages.find { |p| p.path == path }
end
