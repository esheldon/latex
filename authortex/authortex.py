#!/usr/bin/env python
"""
Usage: 
    authortex.py [-a|--authors authordb] [-i|--institutions institutiondb] authorlist


Options:
  -h, --help            show this help message and exit
  -a AUTHORS, --authors=AUTHORS
                        Author Database. Default ./authors
  -i INST, --institutions=INST
                        Institution Database. Default ./institutions

    Two tiers of authors, a first tier ordered as given, and a second ordered
    by the identifier given (usually a last name).

This program facilitates the use of author and institution databases. The
author list can be split into two tiers.  The first tier is ordered as
presented, the second tier is ordered alphabetically by the identifier. The
author list format and the author/institution database formats are taken from
Michael Blanton's, as used by his authortex perl code.

The author and inst. database files can be indicated in the command line
options, but by default the files authors and institutions are looked for and
used.

The results are sent to standard output.


Example author list:
-------------------------------

FIRST TIER
Karabekian
Yossarian
Gandalf

SECOND TIER
SmithJ
SmithR
Jones


Example author database:  AuthorKey/Full Name/Institution List
Each author can have multiple institutions
--------------------------------
Karabekian/Rabo Karabekian/Midland
Yossarian/John Yossarian/Pianosa
....


Example institution database:  InstitutionKey/Full Affiliation Info
------------------------------------
Midland/Midland Institute, Midland City, Some City, Some State, 12345
Pianosa/Pianosa University, Pianosa, Italy
....

Author and institution keys are case insensitive, as are the "first tier" and
"second tier" tokens.




Modification History
--------------------------

2007-09-04  Created. Designed to work with Michael Blanton's author and
            institution database formats. Erin Sheldon, NYU

"""

import sys
from optparse import OptionParser

# Default file names
def_authorfname = "./authors"
def_instfname = "./institutions"

# Options and usage
usage = """
    authortex.py [-a|--authors authordb] [-i|--institutions institutiondb] authorlist
"""
parser=OptionParser(usage)
parser.add_option("-a","--authors", 
                  dest="authors",
                  help="Author Database. Default ./authors", 
                  default=def_authorfname)
parser.add_option("-i","--institutions", 
                  dest="inst",
                  help="Institution Database. Default ./institutions", 
                  default=def_instfname)

def ParseAuthorDb(authorfile):
    """ Parse the author database"""

    authors = {}
    for line in authorfile:

        sp = line.split('/')
        if len(sp) == 3:

            # There can be multiple institutions, so use split to create
            # a list
            author_id = sp[0].strip().lower()
            name = sp[1].strip()
            inst_idlist = sp[2].strip().split()
            inst_idlist = [id.lower() for id in inst_idlist]

            authors[author_id] = \
                    {'author_id':author_id, 
                     'name':name, 
                     'inst_idlist':inst_idlist}

    return authors

def ParseInstitutionDb(instfile):
    """Parse the institution database"""
    inst = {}
    for line in instfile:

        # Allow / in name. Just split on first occurence
        id = line.find('/')
        if id != -1:
            inst_id = line[0:id].strip().lower()
            affil = line[id+1:].strip()

            inst[inst_id] = {'inst_id':inst_id, 'affil':affil}
    return inst

def ParseAuthorlist(authorfile):
    """Parse the user's author list"""
    
    first = []
    second = []
    isfirst=0
    issec=0
    for line in authorfile:
        line = line.strip()
        sp = line.split()
        if len(sp) == 2:
            # First or Second indicator is given
            if sp[0].upper() == 'FIRST':
                isfirst=1
                issec=0
            elif sp[0].upper() == 'SECOND':
                issec=1
                isfirst=0
        elif len(sp) == 1:
            id = sp[0].lower()
            if isfirst:
                first.append(id)
            elif issec:
                second.append(id)

    # sort by the identifier
    second.sort()

    # Now append the seconds to the first list
    for s in second:
        first.append(s)
    return first

def ProcessAuthors(all_authors, all_inst, authorlist):
    """
    Loop through the requested author ids and keep track of the
    affiliations in the order they come
    """

    kept_authors = []
    author_marks = []
    kept_inst = []
    kept_inst_marks = {}
    marknum = 1
    for author_id in authorlist:

        if author_id not in all_authors:
            print 'Author id: "'+author_id+'" not in database'
            sys.exit(45)
        else:
            name = all_authors[author_id]['name']
            inst_idlist = all_authors[author_id]['inst_idlist']

        # Keep a unique, ordered list of institutions
        amarks=[]
        for inst_id in inst_idlist:
            if inst_id not in all_inst:
                print 'Institution id: "'+inst_id+'" not in database'
                sys.exit(45)
            else:
                output = name
                if inst_id not in kept_inst_marks:
                    affil = all_inst[inst_id]['affil']
                    mark=str(marknum)
                    kept_inst.append({'mark':mark, 'affil':affil})

                    kept_inst_marks[inst_id] = mark

                    marknum=marknum+1


                # get the mark for this id
                amark = kept_inst_marks[inst_id]
                amarks.append(amark)

        if len(amarks) > 0:
            # Sort numerically (key=int uses int(mark) as sort key)
            amarks.sort(key=int)
            # Note comma
            afm = ',\\altaffilmark{'+','.join(amarks)+'}'
            author_marks.append(afm)
            kept_authors.append(name)

    # Combine, but with the marks *after* the comma.  This is less clean
    # to code, but looks better
    if len(kept_authors) > 0:
        # fix comma on last name
        author_marks[-1] = author_marks[-1].replace(',','',1)
        # Combine
        kept_authors = [k+a for k,a in zip(kept_authors,author_marks)]
        
    
    return kept_authors, kept_inst


def PrintAuthors(kept_authors):
    """Print the authorlist"""

    if len(kept_authors) == 0:
        print 'No good authors/institutions found'
        sys.exit(45)

    # Create the text for the authors
    if len(kept_authors) > 1:
        kept_authors[-1] = 'and '+kept_authors[-1]

    kept_authors = '\n'.join(kept_authors)

    # fix last comma


    # Print out the authorlist with affilmarks
    print '\\author{'
    print kept_authors
    print '}'
    print

def PrintAffil(kept_inst):
    """Print the affiliatons"""
    # Print out the affiltext commands
    affiltext = ''
    for inst in kept_inst:
        affiltext = '\\altaffiltext'
        affiltext = affiltext + '{'+inst['mark']+'}'
        affiltext = affiltext + '{'+inst['affil']+'}'

        print affiltext

def GetFiles(argv):
    """
    Extract the filenames from the command line, open the files and return
    the file objects
    """
    (options, args) = parser.parse_args(argv[1:])
    if len(args) < 1:
        parser.print_help()
        sys.exit(45)

    # Optional arguments
    authorfname = options.authors
    instfname = options.inst
    # required argument: the user's author list
    myauthorfname = args[0]

    # open the files
    authorfile = open(authorfname, "r")
    instfile = open(instfname,"r")
    myauthorfile = open(myauthorfname)
    
    return authorfile, instfile, myauthorfile


#
# Main program
#

authorfile, instfile, myauthorfile = GetFiles(sys.argv)

# Parse the databases
all_authors = ParseAuthorDb(authorfile)
all_inst = ParseInstitutionDb(instfile)

# Parse the users authorlist
authorlist = ParseAuthorlist(myauthorfile)

# Process the authors, checking for matches in the
# author and institution databases
kept_authors, kept_inst = ProcessAuthors(all_authors, 
                                         all_inst,
                                         authorlist)
# To stdout
PrintAuthors(kept_authors)
PrintAffil(kept_inst)


