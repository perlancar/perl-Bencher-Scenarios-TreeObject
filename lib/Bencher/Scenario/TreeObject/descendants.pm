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
    datasets => [
        {
            name => 'small1 (31 nodes)',
            args => {height=>4, num_children=>2},
        },
        {
            name => 'small2 (364 nodes)',
            args => {height=>5, num_children=>3},
        },
        {
            name => 'small3 (1365 nodes)',
            args => {height=>5, num_children=>4},
        },
        {
            name => 'medium1 (19531 nodes)',
            args => {height=>6, num_children=>5},
        },
    ],
};

1;
# ABSTRACT:
