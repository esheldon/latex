import sys
import sdsspy

if len(sys.argv) < 2:
    print 'usage: par2table.py par > tab'
    sys.exit(1)

f=sys.argv[1]
data=sdsspy.yanny.readone(f)

f='%s & %0.2f & %0.2f & %0.2f & %0.2f & %0.2f'
for i,t in enumerate(data):

    tup = (t['areaname'],t['cetaMin'],t['cetaMax'],
           t['clambdaMin'],t['clambdaMax'],t['area'])
    print f % tup,
    if i < (data.size-1):
        print '\\\\'
    else:
        print

