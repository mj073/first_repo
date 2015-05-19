#!/usr/bin/perl

$tri_num[0]=0;
$i=1;
while(true)
{
	$count=1;
	$tri_num[$i]=$tri_num[$i-1] + $i;
	#print "\n",$tri_num[$i],"->";
	for($j=1;$j<sqrt($tri_num[$i]);$j++)
	{
		if($tri_num[$i] % $j==0){
		#	print $j,",";
			$count++;
		}
	}
	$hash{$tri_num[$i]}=$count;
	if($hash{$tri_num[$i]}>5)
	{
		print "\n",$tri_num[$i],"->",$hash{$tri_num[$i]};
		goto label;
	}
	#print "\n",$tri_num[$i];	
	#print "|",$tri_num[$i],"->",$hash{$tri_num[$i]},",";
	$i++;
}
label:
#print $hash{15};
print "\n";
