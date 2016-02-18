#!/usr/bin/perl
    use warnings;
    use strict;

    use Net::SSH::Perl;
    my $host = '192.168.0.254';
    my $user = 'root';
    my $pass = 'pass';
    my $ssh = Net::SSH::Perl->new('$host');
    $ssh->login('$user', '$pass') or die "Oh noes! $!";
