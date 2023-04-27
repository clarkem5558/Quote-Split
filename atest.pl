#!/usr/bin/perl
use strict;
use warnings;

print("Enter a list of numbers sperate by a comma\n");
my $quote = $ARGV[0];
#my ($region) = $ARGV[1];

my @quotes = split(',', $quote);
my $value = "";
my $qstring = "";
my $flag = 0;

foreach $value(@quotes)
{
	if ($flag == 0) {

		$qstring .= "'" . $value . "'";
	}
	else {
		$qstring .= ",'" . $value . "'";	
	}
	$flag ++;
}

print $qstring;
