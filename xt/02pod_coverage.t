use Test::More;
use Test::Pod::Coverage;

my @modules = qw(List::MapMulti);
pod_coverage_ok($_, "$_ is covered")
	foreach @modules;
done_testing(scalar @modules);

