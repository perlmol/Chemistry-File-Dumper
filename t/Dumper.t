# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More tests => 5;
BEGIN { use_ok('Chemistry::File::Dumper') };

my $mol = Chemistry::Mol->read("t/mol.pl", format => 'dumper');
isa_ok($mol, "Chemistry::Mol", 'read');
my $mol_auto = Chemistry::Mol->read("t/mol.pl");
isa_ok($mol, "Chemistry::Mol", 'read (autodetect)');
my $s = $mol->print(format=>'dumper');
my $s2 = $mol_auto->print(format=>'dumper');
is($s, $s2, 'dump and compare');
$mol->write('t/test1.pl');
my $mol3 = Chemistry::Mol->read("t/test1.pl");
my $s3= $mol->print(format=>'dumper');
is($s, $s3, 'write and read and compare');
unlink 't/test1.pl';

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

