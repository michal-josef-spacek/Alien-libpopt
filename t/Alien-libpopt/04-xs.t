#!/usr/bin/env perl

use strict;
use warnings;

use Alien::libpopt;
use Test::Alien;
use Test::More;

alien_ok 'Alien::libpopt';
my $xs = do { local $/; <DATA> };
xs_ok {
	xs => $xs,
	verbose => 1,
}, with_subtest {
	my ($module) = @_;
	my $version = $module->version;
	is($version, '');
	note "version = $version";
};

done_testing;

__DATA__

#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include <popt.h>

const char *
version(const char *class)
{
	// XXX No version from popt library
	const char * version = "";
	return version;
}

MODULE = TA_MODULE PACKAGE = TA_MODULE

const char *version(class);
	const char *class;
