require 'benchmark/ips'
INTEGER_HASH = { 1 => "bar"}
STRING_HASH = { "foo" => "bar"}
SYMBOL_HASH = { "foo" => "bar"}
Benchmark.ips do |x|
	x.report("Integer") { INTEGER_HASH[1] }
	x.report("String") { STRING_HASH["foo"] }
	x.report("Symbol") { SYMBOL_HASH[:foo] }
	x.compare!
end