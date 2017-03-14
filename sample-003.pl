#!/usr/bin/env perl

use warnings;

if ( @ARGV != 1 ) {
    die "Error";
}

run( $ARGV[0] );

sub run {
    my $max = shift;
    my $min = 1;
    my @results = solv( $min, $max );
    print join( "\n", @results ), "\n";
}

sub solv {
    my ( $i, $max, @results ) = @_;
    if ( @results == $max ) {
        return @results;
    }

    if ( $i % 15 == 0 ) {
        push @results, 'fizzbuzz';
    }
    elsif ( $i % 3 == 0 ) {
        push @results, 'fizz';
    }
    elsif ( $i % 5 == 0 ) {
        push @results, 'buzz';
    }
    else {
        push @results, $i;
    }

    $i++;

    return solv( $i, $max, @results );
}
