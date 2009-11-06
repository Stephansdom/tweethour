#!/usr/bin/env perl
# tweets the hour like a church clock

use strict;
use warnings;
use Net::Twitter::Lite;

my $username    = shift || die "No username given!\n";
my $password    = shift || die "No password given!\n";
my $dong        = shift || 'DONG';

my $hour        = (localtime)[2] % 12;
$hour = 12 if $hour == 0;

my $status      = join ' ' => ( $dong ) x $hour;

my $twitter     = Net::Twitter::Lite->new(
    username    => $username,
    password    => $password,
);

eval { $twitter->update( $status ) };
warn "$@\n" if $@;

__END__

=head1 NAME

tweethour.pl - tweets the hour like a church clock

=head1 USAGE

    perl tweethour.pl mytwittername mytwitterpassword

or

    perl tweethour.pl mytwittername mytwitterpassword BLING

tweethour will DONG like a church clock by default. If you provide the third
command line argument C<BLING>, it will BLING instead of DONG.

=head1 PREREQUISITES

=over 4

=item perl

=item Net::Twitter::Lite

=back

=head1 AUTHOR

Mirko Westermeier (mail@memowe.de)
