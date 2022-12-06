#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: _genindex.pl
#
#        USAGE: ./_genindex.pl  
#
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Eotect Nahn (eote), eotect@myplace.hel
# ORGANIZATION: MyPlace HEL ORG.
#      VERSION: 1.0
#      CREATED: 2022/12/ 3  3:03:45
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

use File::Glob qw/bsd_glob/;

sub print_dir {
	my $dir = shift;
	my $lvl = shift;
	$lvl = 0 unless($lvl);
	print "\n" . "#"x(3+$lvl) . " $dir\n";
	my @subdir;
	my @files;
	foreach(bsd_glob("$dir/*")) {
		next if(m/^\./);
		if(-d $_) {
			push @subdir,$_;
		}
		elsif(m/\.(?:md|html|txt)$/){
			push @files,$_;
		}
	}
	foreach my $fn(reverse sort @files) {
		my $prefix = "";
		my $name = $fn;
		my $date;
		my $head;
		if($fn =~ m/^(.+)\/([^\/]+)$/) {
			$prefix = "$1/";
			$name = $2;
		}
		$name =~ s/\.[^\.]+$//;
		if($name =~ m/^([\d-]{8,})_(.+)$/) {
			$date = $1;
			$name = $2;
		}
		if($name =~ m/^([^_]+)_(.+)$/) {
			$head = $1;
			$name = $2;
		}
		$name =~ s/[-_]/ /g;
		$prefix = $prefix . "[${date}]" if($date);
		$prefix = $prefix . "${head}: " if($head); 
		$name = $prefix . $name;
		$fn =~ s/ /%20/g;
		print " "x(1+$lvl) . "- " . "[$name]($fn)\n";
	}
	$lvl += 1;
	foreach(@subdir) {
		print_dir($_,$lvl);
	}
}

print <<'HEAD';
---
permalink: /
---

## NOTES

HEAD

foreach my $t(qw/daily programming os virtualization/) {
	print_dir($t,0);
}
