group :tdd, halt_on_fail: true do
  guard :rspec, cmd: "RUBY_ENV=test bundle exec rspec" do
    watch(%r{^spec/.+_spec\.rb$})
    watch(%r{^lib/(.+)\.rb$})     { |m| "spec/#{m[1]}_spec.rb" }
    watch("spec/spec_helper.rb")  { "spec" }
    watch("config/app.yml") { "spec/emoji_flags/config_spec.rb" }
  end

  guard :rubocop do
    watch(%r{.+\.rb$})
    watch(%r{(?:.+/)?\.rubocop\.yml$}) { |m| File.dirname(m[0]) }
  end
end
