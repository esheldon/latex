import sys
if len(sys.argv) < 2:
    print 'calculate-computing ngpu'
    sys.exit(1)

ngpu=int(sys.argv[1])

time_per_obj=0.011630

nobj=500000000.
nexp=10.
ntotal=nobj*nexp

time_total = time_per_obj*ntotal

desired_time=2.5*7*24*60*60

# divide by two for two gpus
nmachines=int(round(time_total/desired_time/ngpu))

print 'nmachines:',nmachines

#cost_per_machine=8800.
base_gpu_cost=1800.
gpu_cost=ngpu*base_gpu_cost
base_cost=5200.
cost_per_machine=base_cost + gpu_cost
total_cost=round(nmachines)*cost_per_machine

print 'base machine cost:',base_cost
print 'base gpu cost:',base_gpu_cost
print 'cost per:',cost_per_machine
print 'cost:',total_cost

print 'disk per machine:',130./nmachines

print 'cost increase:',cost_per_machine/base_cost
