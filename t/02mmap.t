use Test::More tests => 2;
use List::MapMulti;

my @numbers = (2..10, qw/Jack Queen King Ace/);
my @suits   = qw/Clubs Diamonds Hearts Spades/;
my $type;
my @deck1 = mapm { $type = ref $_; "$_[0] of $_[1]" } \@numbers, \@suits;
my @deck2 = do
{
	my @r;
	for my $n (@numbers)
	{
		for my $s (@suits)
		{
			push @r, "$n of $s";
		}
	}
	@r;
};

isa_ok($type, 'List::MapMulti::Iterator');
is_deeply(\@deck1, \@deck2);

