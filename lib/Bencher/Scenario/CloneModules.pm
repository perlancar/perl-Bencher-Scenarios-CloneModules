package Bencher::Scenario::CloneModules;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark various data cloning modules',
    participants => [
        {fcall_template=>'Clone::clone(<data>)'},
        {fcall_template=>'Clone::PP::clone(<data>)'},
        {fcall_template=>'Data::Clone::clone(<data>)'},
        {fcall_template=>'Sereal::Dclone::dclone(<data>)'},
        {fcall_template=>'Storable::dclone(<data>)'},
    ],
    datasets => [
        {name=>'array0'   , args=>{data=>[]}},
        {name=>'array1'   , args=>{data=>[1]}},
        {name=>'array10'  , args=>{data=>[1..10]}},
        {name=>'array100' , args=>{data=>[1..100]}},
        {name=>'array1000', args=>{data=>[1..1000]}},
    ],
};

1;
# ABSTRACT:

=head1 SEE ALSO
