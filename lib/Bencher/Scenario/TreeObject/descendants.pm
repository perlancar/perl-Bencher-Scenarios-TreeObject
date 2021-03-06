package Bencher::Scenario::TreeObject::descendants;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use Bencher::ScenarioUtil::TreeObject;
use Tree::Create::Size;

my $classes = \%Bencher::ScenarioUtil::TreeObject::classes;

our $scenario = {
    summary => 'Benchmark descendants()',
    participants => [
        map {
            my $spec = $classes->{$_};
            +{
                module => $_,
                code_template => "state \$tree = Tree::Create::Size::create_tree(height => <height>, num_children => <num_children>, class => '".($spec->{use_my_class} ? "My::$_":$_)."'); my \@res = \$tree->descendants; scalar(\@res)",
            }
        } sort keys %$classes,
    ],
    datasets => \@Bencher::ScenarioUtil::TreeObject::trees_datasets,
};

1;
# ABSTRACT:
