package Bencher::Scenario::CloneModules::Startup;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark startup of various data cloning modules',
    module_startup => 1,
    participants => [
        {module=>'Clone'},
        {module=>'Clone::PP'},
        #{module=>'Clone::Any'}, # i no longer recommend using this
        {module=>'Clone::Util'},
        {module=>'Function::Fallback::CoreOrPP'},
        {module=>'Sereal::Dclone'},
        {module=>'Storable'},
    ],
    #datasets => [
    #],
    on_result_failure => 'warn',
};

1;
# ABSTRACT:

=head1 SEE ALSO
