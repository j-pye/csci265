package mailer;
#================================================================--
# Design Unit  : mailer module
#
# File Name    : mailer.pm
#
# Purpose      : implements mailer module
#
# Note         :
#
# Limitations  : needs an email and a password passed into it
#
# Errors       : none known
#
# Modules      : 
#
# Dependences  : mutt linux mailer (preinstalled on Otter)
#
# Author       : Aubrey Robertson, Vancouver Island University
#
# System       : Perl (Linux)
#
#------------------------------------------------------------------
# Revision List
# Version      Author  Date    Changes
# 0.1          Aubrey  Oct 25, 2013 Built initial program   
#=========================================================

$|=1;

use strict;
use warnings;
use lib '../';

sub new { #constructor
        #my $class = shift @_;
        my $sock = shift @_;
        
        print $sock "HEllO CI\n";  
        
        close $sock;
        return
}

1;
