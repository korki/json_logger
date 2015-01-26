# coding: utf-8
Gem::Specification.new do |spec|
  spec.name          = "json_logger"
  spec.version       = '0.0.1'
  spec.authors       = ['Orest Hrycyna']
  spec.email         = ['orest.hrycyna@gmail.com']
  spec.summary       = %q{Json Logger}
  spec.description   = spec.summary
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end