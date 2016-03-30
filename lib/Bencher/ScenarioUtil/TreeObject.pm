package Bencher::ScenarioUtil::TreeObject;

# DATE
# VERSION

our %classes = (
    'Tree::Object::Hash'                 => {backend=>'hash'},
    'Tree::Object::Hash::ChildrenAsList' => {backend=>'hash'},
    'Tree::ObjectXS::Hash'               => {backend=>'hash'},

    'Tree::Object::Array'                => {backend=>'array', use_my_class=>1},
    'Tree::Object::Array::Glob'          => {backend=>'array', use_my_class=>1},
    'Tree::ObjectXS::Array'              => {backend=>'array', use_my_class=>1},
);

our @trees_datasets = (
    {
        name => 'small1 (31 nodes)',
        summary => 'A tree with height=4 and 2 children per non-leaf nodes, nodes=1 + 2 + 4 + 8 + 16 = 31',
        args => {height=>5, num_children=>2},
    },
    {
        name => 'small2 (364 nodes)',
        summary => 'A tree with height=5 and 3 children per non-leaf nodes, nodes=1 + 3 + 9 + 27 + 81 + 243 = 364',
        args => {height=>5, num_children=>3},
    },
    {
        name => 'small3 (1365 nodes)',
        summary => 'A tree with height=5 and 4 children per non-leaf nodes, nodes=1 + 4 + 16 + 64 + 256 + 1024 = 1365',
        args => {height=>5, num_children=>4},
    },
    {
        name => 'medium1 (19531 nodes)',
        summary => 'A tree with height=6 and 5 children per non-leaf nodes, nodes=1 + 5 + 25 + 125 + 625 + 3125 + 15625 = 19531',
        args => {height=>6, num_children=>5},
    },
);

package # hide from PAUSE
    My::Tree::Object::Array;
use Tree::Object::Array;

package # hide from PAUSE
    My::Tree::Object::Array::Glob;
use Tree::Object::Array::Glob;

package # hide from PAUSE
    My::Tree::ObjectXS::Array;
use Tree::ObjectXS::Array;

1;
# ABSTRACT: Utility routines
