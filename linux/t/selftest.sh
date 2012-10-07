#!/bin/sh
#echo testing DWIM Perl

file_path=`readlink -f "$0"`
dir_path=`dirname $file_path`
root=`dirname $dir_path`
# echo "Root $root"

export DWIMPERL_ROOT=$root
# $root/perl/bin/perl -v
$root/perl/bin/perl $root/perl/bin/prove $root/t/

