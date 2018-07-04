#!/usr/bin/env perl

use warnings;

if ( @ARGV != 1 ) {
    die "Error";
}

run( $ARGV[0] );

sub run {
    my $max = shift;
    foreach my $i ( 1..$max ) {
        my $str = '';
        if ( $i % 3 == 0 ) {
            $str .= 'fizz';
        }
        if ( $i % 5 == 0 ) {
            $str .= 'buzz';
        }
        if (  $i % 3 != 0 && $i % 5 != 0 ) {
            $str = $i;
        }
        print $str, "\n"
    }
}
