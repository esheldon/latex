#!/usr/bin/perl

#Usage: ./authortex.pl authorlist [startindex 1] [sdssauthors] [sdssinstitutions]

#Output: {authorlist}.tex

#authorlist is a file containing the desired author names in the
#following format
#
#
#FIRST TIER
#Richards
#Fan
#VandenBerk
#Schneider
#Strauss
#
#SECOND TIER
#Gunn
#Pier
#Frieman
#Uomoto
#BahcallN
#BahcallJ
#
#
#The first tier authors need to be in the correct order.  The second
#tier authors are sorted alphabetically.
#
#[startindex] is an optional argument that allows the author footnotes
#to start at a number other than one.  For example if there is a
#footnote to the title.
#
#[sdssauthors] is the database file with author names and institutions
#
#[sdssinstitutions] is the database file with addresses of the institutions
#
#Note that these paths are hardcoded now!

my $def_authorfile = "./sdssauthors";
my $def_instfile   = "./sdssinstitutions";

if (defined $ARGV[2]) {
    $authorfile = $ARGV[2];
} else {
    $authorfile = $def_authorfile;
}
if (defined $ARGV[3]) {
    $institutionfile = $ARGV[3];
} else {
    $institutionfile = $def_instfile;
}

#fill author hash array
open(AUTHORFP,"<$authorfile") || die "cant open sdssauthors database file";
while($inline = <AUTHORFP>) {

    chop($inline);
    @authorline=split("/",$inline);
    $name = @authorline[0];
    
    $authors{$name} = [ @authorline ];

}
close(AUTHORFP);


#fill institution hash array
open(INSTFP,"<$institutionfile") || die "cant open sdssinstitutions database file";
while($inline = <INSTFP>) {

    chop($inline);
    @instline=split("/",$inline);
    $inst = @instline[0];
    
    $institutions{$inst} = [ @instline ];
    $institutions{$inst}[2] = 0;

}
close(INSTFP);

#Read authorlist input file
#output authorlist.tex

$tier1authorstring = "";
$tier1institutionstring = "";

$tier = 0;
if (defined $ARGV[1]) {
    $counter = $ARGV[1];
} else {
    $counter = 1;
}
open(INFP,$ARGV[0]) || die "cant open infile";
while($inline = <INFP>) {
    @input=split(" ",$inline);
    if ($inline =~ /^\s/) {
	next;
    }
    if (@input[0] eq "FIRST") {
	$tier = 1;
	next;
    } elsif (@input[0] eq  "SECOND") {
	$tier = 2;
	next;
    } else {
	$name = @input[0];
    }
    
    push(@allauthors,$name);

    if ($tier == 1) {
	if ($authors{$name}[1] eq "") {
	    die "No entry in author database for $name";
	}
	#$authorstring = "$authors{$name}[1]\\altaffilmark{";
	$authorstring = "$authors{$name}[1],\\altaffilmark{";
	$tier1authorstring = $tier1authorstring.$authorstring;

	@instlist = split(" ",$authors{$name}[2]);

	#Assign counter number to each institution
	foreach $inst (@instlist) {
	    if ($institutions{$inst}[1] eq "") {
		die "No entry in institution database for $inst";
	    }
	    if ($institutions{$inst}[2] == 0) {
		$institutions{$inst}[2] = $counter;
		$institutionstring = "\\altaffiltext{$institutions{$inst}[2]}{$institutions{$inst}[1]}\n";
		$tier1institutionstring = $tier1institutionstring.$institutionstring;
		$counter++;
	    }
	    push(@instcounterlist,$institutions{$inst}[2]);
	}
	if ($#instlist == 0) {
	    $institutionstring = pop(@instcounterlist);
	    $tier1authorstring = $tier1authorstring.$institutionstring;
	} else {
	    @instcounterlistsort = sort { $b <=> $a } @instcounterlist;
	    for $i (0 .. $#instcounterlistsort) {
		if ($i == 0) {
		    $institutionstring = pop(@instcounterlistsort);
		    $tier1authorstring = $tier1authorstring.$institutionstring;
		    pop(@instcounterlist);
		} else {
		    $institutionstring = pop(@instcounterlistsort);
		    $tier1authorstring = $tier1authorstring.",".$institutionstring;
		    pop(@instcounterlist);
		}
	    }
	}
	#$tier1authorstring = $tier1authorstring."},\n";
	$tier1authorstring = $tier1authorstring."}\n";
    }

    if ($tier == 2) {
	@input=split(" ",$inline);
	push(@tier2list,@input[0]);
    }

}
close(INFP);

$n = 0;
#Now take care of second tier authors, who need to be sorted
foreach $name (sort @tier2list) {

    if ($authors{$name}[1] eq "") {
        die "No entry in author database for $name";
    }
    #$authorstring = "$authors{$name}[1]\\altaffilmark{";
    if ($n != $#tier2list) {
        $authorstring = "$authors{$name}[1],\\altaffilmark{";
    } else {
        $authorstring = "and "."$authors{$name}[1]\\altaffilmark{";
    }
    $tier2authorstring = $tier2authorstring.$authorstring;

    @instlist = split(" ",$authors{$name}[2]);

    #Assign counter number to each institution
    foreach $inst (@instlist) {
        if ($institutions{$inst}[1] eq "") {
            die "No entry in institution database for $inst";
        }
        if ($institutions{$inst}[2] == 0) {
            $institutions{$inst}[2] = $counter;
            $institutionstring = "\\altaffiltext{$institutions{$inst}[2]}{$institutions{$inst}[1]}\n";
            $tier2institutionstring = $tier2institutionstring.$institutionstring;
            $counter++;
        }
        push(@instcounterlist,$institutions{$inst}[2]);
    }
    if ($#instlist == 0) {
        $institutionstring = pop(@instcounterlist);
        $tier2authorstring = $tier2authorstring.$institutionstring;
    } else {
        @instcounterlistsort = sort { $b <=> $a } @instcounterlist;
        for $i (0 .. $#instcounterlistsort) {
            if ($i == 0) {
                $institutionstring = pop(@instcounterlistsort);
                $tier2authorstring = $tier2authorstring.$institutionstring;
                pop(@instcounterlist);
            } else {
                $institutionstring = pop(@instcounterlistsort);
                $tier2authorstring = $tier2authorstring.",".$institutionstring;
                pop(@instcounterlist);
            }
        }
    }

    #Deal with last entry.  
    #Right now these are the same because of "and the SDSS Collaboration"
    if ($n != $#tier2list) {
        $tier2authorstring = $tier2authorstring."}\n";
    } else {
        $tier2authorstring = $tier2authorstring."}\n";
    }
    $n++;
}

$outfile = $ARGV[0].".tex";
open(OUTFP,">$outfile") || die "cant open output file";

printf(OUTFP "\\author{\n");
printf(OUTFP "$tier1authorstring");
printf(OUTFP "$tier2authorstring");
printf(OUTFP "}\n");
#printf(OUTFP "and the SDSS Collaboration}\n");

printf(OUTFP "\n");
printf(OUTFP "$tier1institutionstring");
printf(OUTFP "$tier2institutionstring");

close(OUTFP);

#foreach $author (sort @allauthors) {
#    print "$author,";
#}
#print "\n";

