use Test::More tests => 3;
BEGIN { use_ok('List::MapMulti') };

my $iter = new_ok 'List::MapMulti::Iterator' => [ [1] ];

can_ok $iter => qw(next current next_indices current_indices);
