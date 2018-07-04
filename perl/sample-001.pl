#!/usr/bin/env perl

use warnings;

if ( @ARGV != 1 ) {
    die "Error";
}

run( $ARGV[0] );

sub run {
    my $max = shift;
    foreach my $i ( 1..$max ) {
        if ( $i % 15 == 0 ) {
            print "fizzbuzz\n";
        }
        elsif ( $i % 3 == 0 ) {
            print "fizz\n";
        }
        elsif ( $i % 5 == 0 ) {
            print "buzz\n";
        }
        else {
            print "$i\n";
        }
    }
}
