#!/usr/bin/perl
use v5.10;


die "Enter parameters like this: 13:45 + 2:13. spaces between operands and operator is mandatory" unless @ARGV > 0;
@rand1 = split(/:/, $ARGV[0]);
@rand2 = split(/:/, $ARGV[2]);
$oper = $ARGV[1];
$min1_rounded = sprintf "%.2f" , $rand1[1] / 60;
$hour1 =  $rand1[0] + $min1_rounded;
$min2_rounded = sprintf "%.2f" , $rand2[1] / 60;
$hour2 =  $rand2[0] + $min2_rounded;
if ($oper eq "+") {
	$ans=$hour1 + $hour2;
} elsif ($oper eq "-"){
	$ans = $hour1 - $hour2;
} else {
	print "Error: op must be +, - only\n";
	exit;
}
$final_hour = int($ans);
$temp_min = int(($ans - int($ans)) * 60);
$final_hour += int($temp_min / 60);
say $final_hour .":". $temp_min % 60;
