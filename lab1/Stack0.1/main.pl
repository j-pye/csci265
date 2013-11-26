#!/usr/bin/perl
#================================================================--
# Design Unit  : main
#
# File Name    : main.pl
#
# Purpose      : demonstrate the use of stack adt
#                 -> not complete <-
#
# Note         :
#
# Limitations  :
#
# Errors       : none known
#
# Modules      : adt::stack
#
# Dependences  : none
#
# Author       : Peter Walsh, Vancouver Island University
#
# System       : Perl (Linux)
#
#------------------------------------------------------------------
# Revision List
# Version      Author  Date    Changes
# 1.0          PW      Oct 12  New version
#=========================================================


use strict;
use warnings;

use lib './';
use adt::stack;

my $e=adt::stack->new();
$e->push(8);
$e->dump();
