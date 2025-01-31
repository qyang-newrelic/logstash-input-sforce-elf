Gem::Specification.new do |s|
  s.name            = 'logstash-input-sfdc_elf'
  s.version         = '1.0.3'
  s.licenses        = ['MIT']
  s.summary         = 'A Logstash plugin the receives events from Salesforce EventLogFile'
  s.description     = 'This gem is a logstash plugin required to be installed on top of the Logstash core pipeline
                       using $LS_HOME/bin/plugin install gemname. This gem is not a stand-alone program'
  s.authors         = ['Abhishek Sreenivasa', 'Mohammed Islam']
  s.email           = %w(asreenivasa@salesforce.com mislam@salesforce.com)
  s.homepage        = 'http://www.salesforce.com'
  s.require_paths   = ['lib']


  # Files
  s.files = Dir['Gemfile', 'README.md', 'MIT-LICENSE', 'Rakefile', 'logstash-input-sfdc_elf.gemspec', 'lib/**/*']
  
  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { 'logstash_plugin' => 'true', 'logstash_group' => 'input' }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core-plugin-api",  ">= 1.60", "<= 2.99"
  s.add_runtime_dependency 'logstash-codec-plain'
  s.add_runtime_dependency 'activesupport'
  s.add_runtime_dependency 'restforce', '> 3.1.0'

  s.add_development_dependency "logstash-devutils", "~> 1.3", ">= 1.3.1"
end
