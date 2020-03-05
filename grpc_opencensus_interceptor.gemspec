lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "grpc_opencensus_interceptor/version"

Gem::Specification.new do |spec|
  spec.name          = "grpc_opencensus_interceptor"
  spec.version       = GrpcOpencensusInterceptor::VERSION
  spec.authors       = ["Nao Minami"]
  spec.email         = ["south37777@gmail.com"]

  spec.summary       = %q{An interceptor for using OpenCensus with gRPC.}
  spec.description   = %q{An interceptor for using OpenCensus with gRPC.}
  spec.homepage      = "https://github.com/wantedly/grpc_opencensus_interceptor"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/wantedly/grpc_opencensus_interceptor"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-doc"
  spec.add_dependency "grpc"
  spec.add_dependency "opencensus"
end
