# use this to get the table data
awk '{printf "%0.3f & %0.3f & %0.3f & %0.3f \\\\\n",$1,$2,$3*100,$4*100}' nzdata-raw.dat
