use 5.010;
use List::MapMulti qw/mapm/;

my @numbers = (2..10, qw/Jack Queen King Ace/);
my @suits   = qw/Clubs Diamonds Hearts Spades/;

say $_ for mapm { "$_[0] of $_[1]" } \@numbers, \@suits;
