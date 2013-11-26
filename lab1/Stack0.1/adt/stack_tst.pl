#!/usr/bin/perl
######################################################
#-------------File: ./adt/stack_tst.pl-------------
# Peter Walsh
# stack test driver
######################################################

use lib '../';
use adt::stack;

$s0=adt::stack->new();
print("Initial stack size ", $s0->size(), "\n");
print ("Value of empty ", $s0->get_empty() , "\n");
$s0->pop();
print ("Value of empty ", $s0->get_empty() , "\n");
$s0->push(0);
$s0->push(1);
$s0->push(6);
$s0->push(9);
$s0->push(12);
$s0->push(0);
print ("Top should be 12 Top = ", $s0->top(), "\n");
$s0->pop();
print ("Top should be 9 Top = ", $s0->top(), "\n");
print("stack size ", $s0->size(), "\n");
$s0->dump();

$s1=adt::stack->new();
$s1->push("peter");
$s1->dump();
$s0->dump();
