#!/usr/bin/perl
use strict;
use warnings;

my $module = shift or die "Usage: $0 Module::Name\n";

my $status = qx{git st};
if ($status !~ /nothing to commit/) {
	die $status;
}
my $old = qx{mversion -q $module} || '';
chomp $old;
#die "'$old'";
system "cpan $module";
print "-----------------\n";
system "git add -A";
print "-----------------\n";
my $new = qx{mversion -q $module} || '';
chomp $new;
if ($new eq $old) {
	die "ERROR: Nothing changed. Both are '$old'\n";
}


my $status2 = qx{git st};
if ($status2 =~  /nothing to commit/) {
	die "ERROR: Nothing to commit?\n$status2";
}

my $message = "$module   $old   $new";
print "Shall I commit '$message'?   (ENTER for yes, Ctrl-C for no)";
<STDIN>;

system qq{git ci -m "$message"};


