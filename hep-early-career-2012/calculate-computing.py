time_per_obj=0.011630

nobj=500000000.
nexp=10.
ntotal=nobj*nexp

time_total = time_per_obj*ntotal

desired_time=2.5*7*24*60*60

# divide by two for two gpus
nmachines=time_total/desired_time/2

print 'nmachines:',nmachines

cost_per_machine=8800.
total_cost=round(nmachines)*cost_per_machine

print 'cost:',total_cost
