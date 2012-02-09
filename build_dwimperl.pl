#!/usr/bin/env perl 
use strict;
use warnings;
use v5.10;

# For Windows
if ($^O eq 'MSWin32') {
	build_windows();
	exit;
}
die "Unsupported OS '$^O'\n";

# - Copy the helper files from the tools directory to the strawberry directory
#   or just check if they are there as we keep them there
# - check the version number in the iss file
# - rename the result file
sub build_windows {
	my $cmd = qq{"c:/Program Files/Inno Setup 5/Compil32.exe"  /cc c:/work/tools/dwimperl.iss};
	#say $cmd;
	system $cmd;
}


__END__
use File::Basename qw(dirname);
use Cwd qw(abs_path);
use File::Copy qw(copy);
use File::Path::Tiny;
use Archive::Zip;

# See http://padre.perlide.org/trac/wiki/BuildingOnPortableStrawberry
# for further instructions

# This script assumes that Strawberry Perl was installed in c:\strawberry
# and that it is NOT a portable version

my $zip_file = shift or die "Usage: $0 TARGET_ZIP_FILENAME\n";
die "zipfile alredy exists\n" if -e $zip_file;

my $root   = "c:/strawberry";
my $target = 'strawberry';

foreach my $fn (qw(env.pl.bat setup_padre.pl.bat)) {
    my $file = dirname( abs_path($0) ) . "/$fn";
    copy $file, "$root/";
}

#clean();
zip();

sub clean {
	unlink glob "$root/cpan/cpan_sqlite_log.*";
	foreach my $dir (qw(build sources Bundle)) {
		File::Path::Tiny::rm("$root/cpan/$dir");
	}
	File::Path::Tiny::rm("$root/perl/bin/lex"); # Perl6
}

sub zip {
	my $verbose = 0;
	my @files;
	my $zip = Archive::Zip->new;
	$zip->addTree(
		$root, $target,
		sub {
			return if $_ =~ m{cpan/cpan_sqlite_log};
			return if $_ =~ m{cpan/(build|sources|Bundle)};
			return if $_ =~ m{perl/bin/lex};               # Perl 6
			return 1;
		}
	);
	$zip->writeToFileNamed($zip_file);
}


