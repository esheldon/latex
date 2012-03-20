import sdsspy

data=sdsspy.yanny.readone('boss_survey.par')

f='%s & %0.2f & %0.2f & %0.2f & %0.2f & %0.2f'
for i,t in enumerate(data):

    tup = (t['areaname'],t['cetaMin'],t['cetaMax'],
           t['clambdaMin'],t['clambdaMax'],t['area'])
    print f % tup,
    if i < (data.size-1):
        print '\\\\'
    else:
        print

