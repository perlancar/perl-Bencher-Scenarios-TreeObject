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
