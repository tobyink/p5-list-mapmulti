use strict;
use warnings FATAL => 'all';
use Test::More;

use List::MapMulti;

my @numbers = ( 2 .. 10, qw< J Q K A > );
my @suits   = qw< Spades Hearts Diamonds Clubs >;

sub traditional ()
{
	my @results;
	for my $number (@numbers)
	{
		for my $suit (@suits)
		{
			push @results, "$number of $suit";
		}
	}
	\@results;
}

sub mapmulti_params ()
{
	[ mapm { "$_[0] of $_[1]" } \@numbers, \@suits ]
}

sub mapmulti_ab ()
{
	our ($a, $b);
	[ mapm { "$a of $b" } \@numbers, \@suits ]
}

is_deeply mapmulti_params, traditional;
is_deeply mapmulti_ab, traditional;

done_testing;
