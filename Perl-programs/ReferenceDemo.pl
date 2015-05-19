#!/usr/bin/perl

# Function definition
sub PrintHash{
   my (%hash) = @_;
   
   foreach $item (%hash){
      print "Item : $item\n";
   }
}
%hash = ('name' => 'Tom', 'age' => 19);

# Create a reference to above function.
$cref = \&PrintHash;

# Function call using reference.
&$cref(%hash);



# To create a reference for any variable, subroutine or value by prefixing it with a backslash as follows:
#	$scalarref = \$foo;        #Derefernced using $$scalarref			#ref($scalarref) returns type of reference as SCALAR 
#	$arrayref  = \@ARGV;       #Derefernced using @$arrayref			#ref($arrayref) returns type of reference as ARRAY
# 	$hashref   = \%ENV;        #Derefernced using %$hashref         		#ref($hashref) returns type of reference as HASH
#	$coderef   = \&handler;    #Derefernced using &$coderef				#ref($coderef) returns type of reference as CODE
#	$globref   = \*foo;        #Derefernced using *$globref				#ref($globref) returns type of reference as GLOB
#  	$refofref = \$scalarref    #Derefernced using $$$refofref(gives value of $foo)  #ref($refofref) returns type of reference as REF
