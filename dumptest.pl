#!/home/ivan/bin/perl

use warnings;
use strict;
use blib;
use lib '../Mol/blib/lib';
use lib '../File-Mopac/blib/lib';
use Chemistry::File::Mopac;
use Chemistry::File::Dumper;

#my $mol = Chemistry::Mol->read("test.mop", format => "mop");
#my $mol = Chemistry::Mol->read("test.mop");

my $mol = Chemistry::Mol->read("z");
my $s = $mol->print(format=>'dumper');
$mol->write("x.pl");

print $mol->print;

