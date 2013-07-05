use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Config::CmdRC',
    license             => 'perl',
    dist_author         => 'Dai Okabayashi <bayashi@cpan.org>',
    dist_version_from   => 'lib/Config/CmdRC.pm',
    configure_requires  => {
        'Module::Build' => 0.38,
    },
    build_requires      => {
        'Test::More' => 0.88,
    },
    requires => {
        'perl' => '5.008001',
        'Carp' => 0,
    },
    add_to_cleanup      => [ 'Config-CmdRC-*' ],
    meta_merge     => {
      resources => {
        repository  => 'http://github.com/bayashi/Config-CmdRC'
      }
    },
    recursive_test_files => 1,
);

$builder->create_build_script();
