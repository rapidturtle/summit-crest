# A sample Guardfile
# More info at https://github.com/guard/guard#readme
 
guard 'minitest', notify: false do
  # with Minitest::Spec
  watch(%r|^spec/(.*)_spec\.rb|)
  watch(%r|^lib/(.*)([^/]+)\.rb|)      { |m| "spec/lib/#{m[1]}#{m[2]}_spec.rb" }
  watch(%r|^spec/minitest_helper\.rb|) { "spec" }
 
  # Rails 3.2
  watch(%r|^app/controllers/(.*)\.rb|) { |m| "spec/controllers/#{m[1]}_spec.rb" }
  watch(%r|^app/helpers/(.*)\.rb|)     { |m| "spec/helpers/#{m[1]}_spec.rb" }
  watch(%r|^app/models/(.*)\.rb|)      { |m| "spec/models/#{m[1]}_spec.rb" }
  watch(%r|^app/mailers/(.*)\.rb|)     { |m| "spec/mailers/#{m[1]}_spec.rb" }
end
 
guard 'pow' do
  watch('.powrc')
  watch('.powenv')
  watch(%r{^\.rbenv-.*$})
  watch('Gemfile')
  watch('Gemfile.lock')
  watch('config/application.rb')
  watch('config/environment.rb')
  watch(%r{^config/environments/.*\.rb$})
  watch(%r{^config/initializers/.*\.rb$})
  watch(%r{^config/locales/.*\.yml$})
end