#!/usr/bin/env python

import sys
import os

all = {}

putman={}
putman['who'] = 'Dr. Putman'
putman['full address'] = 'Dr. Mary Putman\\\\mputman@astro.columbia.edu'
putman['what'] = 'the postdoctoral position'
putman['snippet'] = """

Also I think being at a lively place like Columbia, and working with a stimulating
group there will be good for her, and this will be directly reflected in her
research.  In the coming years I expect Jackie to make significant contributions
to our understanding of lens statistics and dark matter substructure.

""".strip()

all['putman'] = putman





vandokkum={}
vandokkum['who'] = 'Dr. Dokkum'
vandokkum['full address'] = 'Dr. Pieter van Dokkum\\\\pieter.vandokkum@yale.edu'
vandokkum['what'] = 'the postdoctoral position'
vandokkum['snippet'] = """

Also I think being at a lively place like Yale, and working with a stimulating
group there will be good for her, and this will be directly reflected in her
research.  In the coming years I expect Jackie to make significant contributions
to our understanding of lens statistics and dark matter substructure.

""".strip()

all['vandokkum'] = vandokkum






koushiappas={}
koushiappas['who'] = 'Dr. Koushiappas'
koushiappas['full address'] = 'Dr. Savvas Koushiappasr\\\\koushiappas@het.brown.edu'
koushiappas['what'] = 'the postdoctoral position'
koushiappas['snippet'] = """

In the coming years I expect Jackie to make significant contributions to our
understanding of lens statistics and dark matter substructure.

""".strip()

all['koushiappas'] = koushiappas





gawiser={}
gawiser['who'] = 'Dr. Gawiser'
gawiser['full address'] = 'Dr. Eric Gawiser\\\\gawiser@physics.rutgers.edu'
gawiser['what'] = 'the postdoctoral position'
gawiser['snippet'] = """

In the coming years I expect Jackie to make significant contributions to our
understanding of lens statistics and dark matter substructure.

""".strip()

all['gawiser'] = gawiser





ias={}
ias['who'] = 'Committee'
ias['full address'] = 'IAS Postdoc Committee\\\\snsrecs@ias.edu'
ias['what'] = 'a postdoctoral position at the IAS'
ias['snippet'] = """

Also I think being at a lively place like the IAS, and working with a
stimulating group there will be good for her, and this will be directly
reflected in her research.  In the coming years I expect Jackie to make
significant contributions to our understanding of lens statistics and dark
matter substructure.

""".strip()

all['ias'] = ias




ycaa={}
ycaa['who'] = 'Committee'
ycaa['full address'] = 'YCAA Fellowship Committee\\\\meg.urry@yale.edu'
ycaa['what'] = 'the YCAA Fellowship'
ycaa['snippet'] = """

Also I think being at a lively place like Yale, and working with a
stimulating group there will be good for her, and this will be directly
reflected in her research.  In the coming years I expect Jackie to make
significant contributions to our understanding of lens statistics and dark
matter substructure.

""".strip()

all['ycaa'] = ycaa



arthur={}
arthur['who'] = 'Committee'
arthur['full address'] = 'James Arthur Fellowship Committee\\\\fellowship@cosmo.nyu.edu'
arthur['what'] = 'the James Arthur Fellowship'
arthur['snippet'] = """

Also I think being at a lively place like the CCPP, and working with a
stimulating group there will be good for her, and this will be directly
reflected in her research.  In the coming years I expect Jackie to make
significant contributions to our understanding of lens statistics and dark
matter substructure.

""".strip()

all['arthur'] = arthur



arthur={}
arthur['who'] = 'Committee'
arthur['full address'] = 'James Arthur Fellowship Committee\\\\fellowship@cosmo.nyu.edu'
arthur['what'] = 'the James Arthur Fellowship'
arthur['snippet'] = """

Also I think being at a lively place like the CCPP, and working with a
stimulating group there will be good for her, and this will be directly
reflected in her research.  In the coming years I expect Jackie to make
significant contributions to our understanding of lens statistics and dark
matter substructure.

""".strip()

all['arthur'] = arthur




russell_spitzer={}
russell_spitzer['who'] = 'Committee'
russell_spitzer['full address'] = 'Russell and Spitzer Fellowship Committees\\\\postapp09\_rec\_letter@astro.princeton.edu'
russell_spitzer['what'] = 'the Russell and Spitzer Fellowships'
russell_spitzer['snippet'] = """

Also I think being at a lively place like Princeton, and working with a
stimulating group there will be good for her, and this will be directly
reflected in her research.  In the coming years I expect Jackie to make
significant contributions to our understanding of lens statistics and dark
matter substructure.

""".strip()

all['russell-spitzer'] = russell_spitzer


hubble={}

hubble['who'] = 'Committee'
hubble['full address'] = 'Hubble Fellowship Committee\\\\hfsubmission@stsci.edu'
hubble['what'] = 'the Hubble Fellowship'
hubble['snippet'] = """

Also I think being at a lively place like MIT, and working with a stimulating
group there will good for her, and this will be directly reflected in her
research.  

Jackie's faculty contact at MIT, Paul Schechter, has a continuing research
program in strong lensing.  Prof.  Schechter's goals in studying strong lenses
are quite complementary to Jackie's since detailed understanding of the lens
population is useful for both efforts.  For both programs, HST data is a
cornerstone for studying the lens populations.

In short, Jackie's work is a good fit for a Hubble fellowship.  With her
collaborators at MIT and elsewhere she will make good use of lensing data from
the HST.  And her independence of spirit is well suited to a Hubble, which
favors those who have their own sense of direction.

""".strip()

all['hubble'] = hubble


clay={}

clay['who'] = 'Committee'
clay['full address'] = 'Clay Fellowship Committee\\\\postdoc@cfa.harvard.edu'
clay['what'] = 'the Clay Fellowship'
clay['snippet'] = """

Also I think being at a lively place like Harvard, and working with a
stimulating group there will good for her, and will be directly reflected in her
research.  In the coming years I expect Jackie to make significant contributions
to our understanding of lens statistics and dark matter substructure.

""".strip()

all['clay'] = clay


ITC={}

ITC['who'] = 'Committee'
ITC['full address'] = 'ITC Fellowship Committee\\\\itcpostdoc@cfa.harvard.edu'
ITC['what'] = 'the ITC Fellowship'
ITC['snippet'] = """

Also I think being at a lively place like Harvard, and working with a
stimulating group there will good for her, and will be directly reflected in her
research.  In the coming years I expect Jackie to make significant contributions
to our understanding of lens statistics and dark matter substructure.

""".strip()

all['itc'] = ITC


pap={}

pap['who'] = 'Committee'
pap['full address'] = 'Pappalardo Fellowship Committee\\\\breen@mit.edu'
pap['what'] = 'the Pappalardo Fellowship'
pap['snippet'] = """

Also I think being at a lively place like MIT, and working with a stimulating
group there will good for her, and will be directly reflected in her research.
In the coming years I expect Jackie to make significant contributions to our
understanding of lens statistics and dark matter substructure.

""".strip()

all['pap'] = pap












form=\
"""
\documentclass[12pt]{letter}
\usepackage{nopageno}

\\address{
Erin Sheldon\\\\
Bldg 510\\\\
Brookhaven National Laboratory\\\\
Upton NY, 11973\\\\
}

\signature{Erin Sheldon}

\\begin{document}
\\begin{letter}{%s}

\opening{Dear %s,\ }

I am writing to recommend Jacqueline Chen for %s.  I am currently an assistant
scientist at Brookhaven National Laboratory, a position equivalent to
assistant professor at a university.  I worked with Jackie when I was a Fellow
at the Kavli Institute for Cosmology and Particle Physics at the University of
Chicago and she was a graduate student there.  We worked on an observational
project to measure the spatial distribution of relatively low luminosity
satellite galaxies around typical host galaxies.  As you will have read from
Jackie's statement, most of her work has been on more theoretical studies of
gravitational lens systems and their use in studying substructure in dark
matter halos.  Jackie has most often worked as the sole author.  Jackie felt
that I, being one of the few people whom she has directly collaborated on a
paper, am a good judge of her work.

We worked together on the paper ``Constraining the Projected Radial
Distribution of Galactic Satellites with the Sloan Digital Sky Survey''.  My
role in this work was to provide clean galaxy catalogs culled from the SDSS
data set, and to advise the proper selection and interpretation of sub samples
of this data.  Jackie developed algorithms informed by her work with
simulations and mock catalogs, and finally applied her algorithms to the SDSS
data.  Since that time Jackie has extended this work in two new papers on
galaxy satellite distributions ``Color Dependence in the Spatial Distribution
of Satellite Galaxies'' and ``The Galaxy Cross-Correlation Function as a Probe
of the Spatial Distribution of Galactic Satellites''.

I have found Jackie to be a careful researcher, who thinks deeply about the
problems on which she works.  Her algorithm for statistically removing
interlopers from potential satellite galaxy populations, applied to SDSS data
in the aforementioned paper, is both novel and a natural extension to previous
techniques.  At the same time she tested many different techniques, and in the
end was able to pick the best method based on rigorous tests using
simulations.  Although her algorithm performed very well, in the end she chose
a different algorithm that slightly outperformed her own after she improveed
it.  She did not care that she had spent much time developing her own
algorithm and it did not out-perform all others; all she cared about was
finding the most accurate method.

Jackie has also worked with Chuck Keeton, Neal Dalal, and Eduardo Rozo on
strong gravitational lensing theory, and has authored papers exploring the
potential of using lensing statistics to understand the substructure in galaxy
halos.  This has been, and will be over the next few years, the main subject
of her interest.  I consider her an expert on halo substructure theory as well
as probing that structure through analysis of large galaxy surveys.

Jackie is an independent thinker who questions everything in an attempt to get
to the underlying truth.  She is not easily swayed by public opinion or
tradition, and she is unafraid to challenge ideas that she sees as logically
flawed, even if they come from the establishment.  I expect that this aspect
of her personality will serve her well during her career, and will become more
fully expressed in her research over time.

After Jackie's move to Europe, I've had minor concerns about her motivation.
But I've noticed a dramatic shift in her energy this year that bodes well for
the next step in her career.  %s

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
