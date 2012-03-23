use Test::More tests => 1;
use List::MapMulti;

my @numbers = (2..10, qw/Jack Queen King Ace/);
my @suits   = qw/Clubs Diamonds Hearts Spades/;

my @deck1 = mapm { "$_[0] of $_[1]" } \@numbers, \@suits;
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

is_deeply(\@deck1, \@deck2);
