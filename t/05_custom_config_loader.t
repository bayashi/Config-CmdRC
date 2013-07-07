use strict;
use warnings;
use Test::More;

use Config::Any;

use Config::CmdRC (
    file   => 'share/custom.yml',
    loader => sub {
        my $path = shift;
        my $cfg = Config::Any->load_files({
            files   => [$path],
            use_ext => 1,
        });
        return $cfg->[0]{$path};
    },
);

is RC->{gmt}, '47';

done_testing;
