time_per_obj_cpu=1.0
speedup=10.0
nparallel=40. # per machine

time_per_obj_gpu = time_per_obj_cpu/speedup/nparallel

nobj=500000000.
nexp=10.
ntotal=nobj*nexp

time_total = time_per_obj_gpu*ntotal


desired_time=2.5*7*24*60*60

nmachines=time_total/desired_time

print 'nmachines:',nmachines
