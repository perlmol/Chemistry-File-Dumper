use 5.008;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'		=> 'Chemistry::File::Dumper',
    'VERSION_FROM'	=> 'Dumper.pm', # finds $VERSION
    'PREREQ_PM'		=> {
        "Chemistry::Mol" => '0.10'
    },
);
