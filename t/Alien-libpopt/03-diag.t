#!/usr/bin/env perl

use strict;
use warnings;

use Alien::libpopt;
use Test::Alien::Diag;
use Test::More;

alien_diag 'Alien::libpopt';
ok 1;

done_testing;
