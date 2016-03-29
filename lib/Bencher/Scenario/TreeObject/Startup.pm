package Bencher::Scenario::TreeObject::Startup;

# DATE
# VERSION

use Bencher::ScenarioUtil::TreeObject;

my $classes = \%Bencher::ScenarioUtil::TreeObject::classes;

our $scenario = {
    summary => 'Benchmark startup of various tree classes',
    module_startup => 1,
    participants => [
        map {
            #my $spec = $classes->{$_};
            +{ module=>$_ };
        } keys %$classes,
    ],
};

1;
# ABSTRACT:

=head1 SEE ALSO
