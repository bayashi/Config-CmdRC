requires 'perl', '5.008005';
requires 'File::Spec';
requires 'Config::Simple';
requires 'Hash::Merge';

on 'configure' => sub {
    requires 'Module::Build' , '0.40';
    requires 'Module::Build::Pluggable';
    requires 'Module::Build::Pluggable::CPANfile';
};