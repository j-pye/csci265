package adt::stack;
#================================================================--
# Design Unit  : stack module
#
# File Name    : stack.pm
#
# Purpose      : implements stack adt
#
# Note         :
#
# Limitations  :
#
# Errors       : none known
#
# Modules      : none
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
# 0.1          PW      Oct 1   New version
#=========================================================

$|=1;

use strict;
use warnings;

sub new {
   my $class=shift @_;
   my $p1=shift @_;

   my $self = {maxsiz => 5,
               stack => [],
               full => 0,
               empty => 0
              };

   if (defined($p1)) {
      $self->{maxsiz}=$p1;
   }

   bless ($self, $class);

   return $self;
}


sub size {
   my $self = shift @_;

   return scalar  @{$self->{stack}};
}

sub push {
   my $self = shift @_;
   my $val = shift @_;

   if ($self->size() == $self->{maxsiz}) {
      $self->{full}=1;
      return 0;
   }

   push (@{$self->{stack}}, $val);

   return 0;

}

sub pop {
   my $self = shift @_;

   if ($self->size() == 0) {
      $self->{empty}=1;
      return 0;
   }

   pop (@{$self->{stack}});

   return 0;
}


sub top {
   my $self = shift @_;

   if ($self->size() == 0) {
      $self->{empty}=1;
      return 0;
   }

   return ${$self->{stack}}[$self->size()-1];
}

# for interactive testing only

sub dump {
   my $self = shift @_;
   
   print ("Stack Dump\n");
   for (my $i=0; $i < $self->size(); $i++) {
      print (${$self->{stack}}[$i], "\n");
   }

   return 0;
}

# exceptions

sub get_full {
   my $self = shift @_;

    return $self->{full};
}

sub set_full {
   my $self = shift @_;
   my $val = shift @_;

   $self->{full}=$val;

   return 0;
}

sub get_empty {
   my $self = shift @_;

    return $self->{empty};
}

sub set_empty {
   my $self = shift @_;
   my $val = shift @_;

   $self->{empty}=$val;

   return 0;
}

1;
