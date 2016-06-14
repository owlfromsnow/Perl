#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

print "Enter the degree bearing you are facing\n";
my $direction = <>;
#First if statement tests if value entered is a number or blank, nested if statement tests which direction person is facing
#I used regex /^\ is the start of the input, \d will only accept values that are 0-9, $/ is the end of the input
if ( ($direction =~ /^\d+$/) && (0 <= $direction) && ($direction <= 360)) 
	{
	 if ($direction <= 90)
			{print "You are facing between North and East \n";}		
	 elsif ($direction <= 180)
			{print "You are facing between East and South \n";}
	 elsif ($direction <= 270)
			{print "You are facing between South and West \n";}
	 elsif ($direction <= 360)
			{print "You are facing between West and North \n";}				}
else
	{print "You need to enter a value between 0 and 360 \n";}