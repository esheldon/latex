#!/usr/bin/env python

import sys
import os

all = {}

hubble={}

hubble['who'] = 'Committee'
hubble['full address'] = 'Hubble Fellowship Committee\\\\hfsubmission@stsci.edu'
hubble['what'] = 'the Hubble Fellowship'
hubble['snippet'] = """

I think this independence of spirit is well suited to recipients of a
fellowship such as the Hubble, which favors those who have their own sense of
direction.  Her faculty contact at UMass, Houjun Mo, should complement her
interests well, as will other faculty members with related interests, such as
Neal Katz, Martin Weinberg, and Julio Navarro.  As you will have read from her
application, Jackie has already begun work with the COSMOS HST data to extend
her work on galaxy satellite populations to higher redshifts and smaller
scales.  It is a natural step to continue this work with the support of a
Hubble fellowship.

In short, I recommend Jackie for the Hubble fellowship. Her spirit and her
research are well matched to the Hubble ideal of an independent researcher
pursuing their interests using HST data at a supportive institution.

""".strip()

all['hubble'] = hubble


gia={}
gia['who'] = 'Committee'
gia['full address'] = 'Giacconi Fellowship Committee\\\\gfsubmission@stsci.edu'
gia['what'] = 'the Giacconi Fellowship'
gia['snippet'] = """

As you will have read from her application, Jackie has already begun work with
the COSMOS HST data to extend her work on galaxy satellite populations to
higher redshifts and smaller scales.  It is natural to continue such work with
support from a Giacconi fellowship from Space Telescope, especially given her
independence.  

In short, I think the Giacconi is a good fit for Jackie's research interestes
and her independent spirit, and I recommend her unreservedly.

""".strip()

all['gia'] = gia

# Generic snipped for less taylored ones below
generic = {}
generic['snippet'] = """

In short, I recommend Jackie for %s.  As you will have read from her
application, Jackie has already begun work with the COSMOS HST data to extend
her work on galaxy satellite populations to higher redshifts and smaller
scales.  She will also continue her work on gravitational lens statistics.  I
think Jackie will make significant contributions to these areas in the coming
years.  

""".strip()



# These are taylored only in the names
cfa = {}
cfa['who'] = 'Committee'
cfa['full address'] = 'ITC Fellowship Committee\\\\itcpostdoc@cfa.harvard.edu'
cfa['what'] = 'the ITC Fellowship'
cfa['snippet'] = generic['snippet'] % (cfa['what'],)

all['cfa'] = cfa

spitzer = {}
spitzer['who'] = 'Committee'
spitzer['full address'] = 'Spitzer and Russell Fellowship Committe\\\\postapp08\_rec\_letter@astro.princeton.edu'
spitzer['what'] = 'the Spitzer and Russell Fellowships'
spitzer['snippet'] = generic['snippet'] % (spitzer['what'],)

all['spitzer'] = spitzer

ias = {}
ias['who'] = 'Committee'
ias['full address'] = 'IAS Postdoc Committee\\\\snsrecs@ias.edu'
ias['what'] = 'the postoc position at the Institute for Advanced Study'
ias['snippet'] = generic['snippet'] % "the IAS postdoc"

all['ias'] = ias

cmu = {}
cmu['who'] = 'Committee'
cmu['full address'] = 'McWilliams Fellowship Committee\\\\donnat@andrew.cmu.edu'
cmu['what'] = 'the McWilliams Fellowship'
cmu['snippet'] = generic['snippet'] % (cmu['what'],)

all['cmu'] = cmu

toronto = {}
toronto['who'] = 'Committee'
toronto['full address'] = 'Reinhardt Fellowship Committee\\\\yuen@astro.utoronto.ca'
toronto['what'] = 'the Reinhardt Fellowship'
toronto['snippet'] = generic['snippet'] % (toronto['what'],)

all['toronto'] = toronto

umass = {}
umass['who'] = 'Committee'
umass['full address'] = 'Fellowship Committee, Theory Group, UMass\\\\terri@astro.umass.edu'
umass['what'] = 'the postdoctoral fellowship in the theory group at the University of Massachusetts'
umass['snippet'] = generic['snippet'] % 'this postdoctoral fellowship'

all['umass'] = umass

ccapp = {}
ccapp['who'] = 'Committee'
ccapp['full address'] = 'CCAPP Fellowship Committee\\\\mcgarry.21@osu.edu'
ccapp['what'] = 'the postdoctoral fellowship at CCAPP'
ccapp['snippet'] = generic['snippet'] % "the CCAPP fellowship"

all['ccapp'] = ccapp


rochester = {}
rochester['who'] = 'Committee'
rochester['full address'] = 'Fellowship Committee\\\\merritt@astro.rit.edu\\\\Rochester Institute of Technology\\\\85 Lomb Memorial Drive\\\\Rochester, NY 14623'
rochester['what'] = 'the postdoctoral fellowship at Rochester'
rochester['snippet'] = generic['snippet'] % "this fellowship"

all['rochester'] = rochester



yale = {}
yale['who'] = 'Marla'
yale['full address'] = 'Prof. Marla Geha\\\\marla.geha@yale.edu\\\\Yale University\\\\P.O. Box 208101\\\\260 Whitney Ave.\\\\New Haven, CT 06520-8101'
yale['what'] = 'the postdoctoral fellowship at Yale'
yale['snippet'] = generic['snippet'] % "this position"

yale['snippet'] = """

As you will have read from her application, Jackie has already begun work with
the COSMOS HST data to extend her work on galaxy satellite populations to
higher redshifts and smaller scales. She will also continue her work on
gravitational lens statistics.   I think Jackie will make significant
contributions to these areas in the next couple of years.  

Jackie is technically well suited for this postdoc.  Although she has not
worked specifically on local dwarf galaxies, she is experienced working with
large datasets in the SDSS and that will naturally translate into your type of
research.  She is not familiar with data reduction, but is experienced working
with large statistical samples at the catalog level, which is becoming a more
common and useful skillset in its own right.  Also her work with galaxy
satellites and halo substructure give her a good background for a switch into
local group dwarf studies.  She has already demonstrated the ability to work on
rather disparate topics: observational galaxy studies and theoretical lensing
statistics.  I think the switch would be fairly straightforward for her and she
could become productive on a relatively short time scale.

""".strip()



all['yale'] = yale


jhu = {}
jhu['who'] = 'Committee'
jhu['full address'] = 'Davis Fellowship Search Committee\\\\bmd@pha.jhu.edu'
jhu['what'] = 'the Allan C. Davis Fellowship'

jhu['snippet'] = """

Jackie is well suited for the Davis Fellowship.  As you will have read from her
application, Jackie has already begun work with the COSMOS HST data to extend
her work on galaxy satellite populations to higher redshifts and smaller
scales. She will also continue her work on gravitational lens statistics.  It
will be natural for her to do this work at JHU/STScI.   I think Jackie will
make significant contributions to these areas in the coming years and being
close to experts on space telescope data will be useful and productive.  

""".strip()

all['jhu'] = jhu





form=\
"""
\documentclass[12pt]{letter}


\\address{
Erin Sheldon\\\\
New York University\\\\
4 Washington Place, Room 424\\\\
New York, NY 10003\\\\
}

\signature{Erin Sheldon}

\\begin{document}
\\begin{letter}{%s}

\opening{Dear %s,\ }

I am writing to recommend Jacqueline Chen for %s.  I am currently a postdoc at
New York University.  I also spent three years as a Kavli Fellow at the Kavli
Institute for Cosmology and Particle Physics at the University of Chicago,
where I began working with Jackie while she was a grad student.  I also want to
point out that this is my first attempt at a recommendation letter, so I 
hope you will forgive any departure from convention in my writing.

Jackie and I worked together on the paper ``Constraining the Projected Radial
Distribution of Galactic Satellites with the Sloan Digital Sky Survey''.  My
role in this work was to provide clean galaxy catalogs culled from the enormous
SDSS data set, and to advise the proper selection and interpretation of sub
samples of this data.  Jackie developed algorithms, worked with the simulations
and mock catalogs, and finally applied her algorithms to the SDSS data.  Over
the last year Jackie has extended this work in two new papers on galaxy
satellite distributions, the first of which just appeared on astro-ph ``Color
Dependence in the Spatial Distribution of Satellite Galaxies''.

I have found Jackie to be a careful researcher, who thinks deeply about the
problems on which she works.  Her algorithm for statistically removing
interlopers from potential galaxy satellite galaxy populations, applied to SDSS
data in the aforementioned paper, is both novel and a natural extension to
previous techniques.  At the same time she tested many different techniques,
and in the end was able to pick the best method based on rigorous tests 
using simulations.  Although her algorithm performed very well, in the end she
chose the one algorithm that slightly outperformed hers (with her own added
improvements) because it gave better results.  She did not care that she had
spent much time developing her own algorithm and it did not out-perform all
others; all she cared about was finding the most accurate method.

Jackie has also worked with Chuck Keeton and Neal Dalal on strong gravitational
lensing theory, and has authored papers exploring the potential of using
lensing statistics to understand the substructure in galaxy halos.  I consider
her an expert on halo substructure and probing that structure through analysis
of large galaxy surveys.

Jackie is an independent thinker who questions everything in an attempt to get
to the underlying truth.  She is not easily swayed by public opinion or
tradition, and she is unafraid to challenge ideas that she sees as logically
flawed, even if they come from the establishment.  I expect that this aspect of
her personality will serve her well during her career, and will become more
fully expressed in her research over time.

%s

%%\closing{Sincerely,\\\\Erin Sheldon }
\closing{Sincerely,\ }

\end{letter}
\end{document}
"""

if len(sys.argv) < 2:
    print 'usage:',sys.argv[0],'type'
    sys.exit(45)

type = sys.argv[1]

type = type.lower()
if type == 'check':
    for t in all:
        print t
    sys.exit(45)

text = form % (all[type]['full address'],all[type]['who'],\
               all[type]['what'],all[type]['snippet'],)

print text
