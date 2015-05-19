#!/usr/bin/perl -w

@words = qw(gold silver diamond);
print "What's your name?";
$name = <STDIN>;
chomp($name);
$i=0;
print "What is the secret word?";
$guess = <STDIN>;
chomp($guess);
$choice = "maybe";
while($choice eq "maybe")
{

	if($guess eq $words[$i])
	{
		print "yes..!!\n";
		$choice = "yes";	
	}
	elsif($i < 2)
	{
		$i = $i + 1;
	}
	else 
	{
		print "Wrong..!! Try again..Whats the secrete word?";
		$guess = <STDIN>;		
		chomp($guess);
		$i = 0;
	}
}
