require_relative 'lib/tencent_simple_sms/version'

Gem::Specification.new do |spec|
  spec.name          = "tencent_simple_sms"
  spec.version       = TencentSimpleSms::VERSION
  spec.authors       = ["anke1460"]
  spec.email         = ["zuosjob@gmail.com"]


  spec.summary       = %q{An unofficial simple tencent cloud sms gem.}
  spec.description   = %q{An unofficial simple tencent cloud sms gem.}
  spec.homepage      = "https://github.com/anke1460/tencent_cloud_sms"
  spec.license       = "MIT"


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir['{lib}/**/*'] + %w(LICENSE.txt README.md)
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
