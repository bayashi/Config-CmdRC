requires 'perl', '5.008005';
requires 'File::Spec';
requires 'Config::Simple';
requires 'Hash::Merge';

on 'test' => sub {
    requires 'Test::More', '0.88';
    requires 'Config::Any';
};

on 'configure' => sub {
    requires 'Module::Build' , '0.40';
    requires 'Module::Build::Pluggable';
    requires 'Module::Build::Pluggable::CPANfile';
};