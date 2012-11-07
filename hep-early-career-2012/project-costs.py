import numpy
import biggles
import esutil as eu

year=numpy.array([2010,2011,2012,2013,2014])
cpucost = 45000./numpy.array([15,19,23,29,36],dtype='f8')
diskcost = 7000./numpy.array([16,20,25,32,40],dtype='f8')

plt=biggles.FramedPlot()

cpup=biggles.Points(year, cpucost, type='filled circle',color='darkgreen')
cpup.label = '\$/2010 equiv. node'
diskp=biggles.Points(year, diskcost, type='filled diamond',color='blue')
diskp.label = '\$/TB'


cpu2015 = eu.stat.interplin(cpucost, year, 2015.)
disk2015 = eu.stat.interplin(diskcost, year, 2015.)
cpu2016 = eu.stat.interplin(cpucost, year, 2016.)
disk2016 = eu.stat.interplin(diskcost, year, 2016.)

print 'cpu  2015:',cpu2015
print 'disk 2015:',disk2015
print 'cpu  2016:',cpu2016
print 'disk 2016:',disk2016

cpu2015p = biggles.Points([2015], cpu2015, type='filled circle',color='red')
cpu2015p.label = 'extrap 2015'
disk2015p = biggles.Points([2015], disk2015, type='filled diamond',color='red')
disk2015p.label = 'extrap 2015'

cpu2016p = biggles.Points([2016], cpu2016, type='filled circle',color='red')
cpu2016p.label = 'extrap 2016'
disk2016p = biggles.Points([2016], disk2016, type='filled diamond',color='red')
disk2016p.label = 'extrap 2016'


key=biggles.PlotKey(0.9,0.9,
                    [cpup,cpu2015p,cpu2016p,diskp,disk2015p,disk2016p], 
                    halign='right')

plt.add(cpup,cpu2015p,cpu2016p,diskp,disk2015p,disk2016p,key)
plt.show()

print year
print diskcost,disk2015[0],disk2016[0]
print cpucost,cpu2015[0],cpu2016[0]

for i in xrange(year.size):
    print '%d %d %d' % (year[i],diskcost[i],cpucost[i])
print '-'*70
print '%d %d %d' % (2015,disk2015[0],cpu2015[0])
print '%d %d %d' % (2016,disk2016[0],cpu2016[0])
