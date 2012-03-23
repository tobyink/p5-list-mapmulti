use 5.010;
use JSON;
use List::MapMulti qw/iterator_multi/;

my @numbers = (2..10, qw/Jack Queen King Ace/);
my @suits   = qw/Clubs Diamonds Hearts Spades/;

my $iter = iterator_multi \@numbers, \@suits;

while (my ($number, $suit) = $iter->())
{
	say "$number of $suit";
#	say to_json([ $iter->current_indices ]);
#	
#	if ($number eq 'Queen')
#	{
#		$iter->next_indices(11,2);
#	}
#	if ($number eq 'Jack')
#	{
#		my @curr = $iter->current;
#		$iter->current('Knave', $curr[1]);
#	}
}
