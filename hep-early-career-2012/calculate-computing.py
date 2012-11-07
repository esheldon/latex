"""
Calculate number of nodes and TB per year at fixed spending
per year.  Not optimal.

  we need 133 TB
  we need 122 2010 equivalent CPUs
 
  we have extrapolated to 2015 numbers from Ernst's projections
     $/TB $/CPU
 2010 437 3000
 2011 350 2368
 2012 280 1956
 2013 218 1551
 2014 175 1250
 ---------------
 2015 131 948
 2016 87 646

 
  if we want fixed cost, we need a constant for
  the number times the rate, which means Ni = c/ri
  and c = Ntot/sum(1/ri)
"""
import numpy


def print_table(years,
                const_cost_CPUs, CPUs_eachyear,
                const_cost_disk, TB_eachyear):
    print """\\begin{deluxetable}{lcccc}
    \\tabletypesize{\\small}
    \\tablecaption{Projected Computing Purchases\\label{table:computing}}
    \\tablewidth{0pt}
    \\tablehead{
        \\multicolumn{1}{l}{Fiscal Year} &
        \\colhead{Disk Storage}       & 
        \\colhead{\\$ for Storage}    & 
        \\colhead{Compute Servers}   & 
        \\colhead{\\$ for CPU} \\\\
        &
        [TB] &
        &
        2010 Equivalent &
    }
    \\startdata"""

    d={}
    d['label'] = 'Total in 4 years'
    d['diskTB'] = 0
    d['diskcost'] = 0
    d['nCPU'] = 0
    d['CPUcost'] = 0
    fmt='%(label)s & %(diskTB)d & %(diskcost)d & %(nCPU)d & %(CPUcost)d \\\\' 
    for i,year in enumerate(years):
        diskcost = round(const_cost_disk,-2)
        CPUcost  = round(const_cost_CPUs,-3)
        l={'label':year,
           'diskTB':TB_eachyear[i],
           'diskcost':diskcost,
           'nCPU':CPUs_eachyear[i],
           'CPUcost':CPUcost}

        print fmt % l

        d['diskTB'] += int(TB_eachyear[i])
        d['diskcost'] += diskcost

        d['nCPU'] += int(CPUs_eachyear[i])
        d['CPUcost'] += CPUcost

    d['diskcost'] = round(d['diskcost'],-2)
    d['CPUcost'] = round(d['CPUcost'],-3)

    print '\\hline'
    print '\\relax\\\\[-1.7ex]'

    nfmt = fmt+'\\\\[-2.7ex]'
    print  nfmt % d
    print '\\enddata'
    print """
    \\tablecomments{The number of compute nodes purchased is based on
    the assumption that each node (26kSI2k, 104 HEP-SPEC 2006) would stay at the
    performance level of a node purchased in 2010. As the performance per node will
    increase over time the actual number of compute nodes after 3 years will be
    significantly smaller (probably O(70)), providing a combined performance of
    O(120) 2010 equivalent nodes. Prices include 40\% bulk discounts from
    purchasing through the RHIC ATLAS Computing Facility at BNL. {\\bf Power,
    cooling and maintence will be provided at no extra cost to this experiment.}}

    \\end{deluxetable}
    """

def get_const_cost(ntot, rates):
    rates_inv=1./rates
    rates_inv_sum=rates_inv.sum()
    return ntot/rates_inv_sum

def main():

    years=numpy.array([2012,2013,2014,2015,2016])
    cost_perTB_eachyear = numpy.array([280.,218.75,175.,131.25,87],dtype='f8')
    cost_perCPU_eachyear = numpy.array([1956.5217,1551.724,1250., 948.2758,646.],dtype='f8')

    want_TB=133
    want_CPUs=122

    const_cost_CPUs = get_const_cost(want_CPUs, cost_perCPU_eachyear)
    const_cost_disk  = get_const_cost(want_TB, cost_perTB_eachyear)

    CPUs_eachyear = const_cost_CPUs/cost_perCPU_eachyear
    TB_eachyear = const_cost_disk/cost_perTB_eachyear

    print_table(years,
                const_cost_CPUs, CPUs_eachyear,
                const_cost_disk, TB_eachyear)
main()


