#current set
#    sigrat2.0 gg01rcomb eg01r01 dg01rcomb
#    sigrat1.4 gg03r01   eg03r01 dg04rcomb
#    sigrat1.0 gg04rcomb eg04r01 dg05r01

sr20_set="run-gg01rcomb run-eg01r01 run-dg01rcomb"
sr14_set="run-gg03r01   run-eg03r01 run-dg04rcomb"
sr10_set="run-gg04rcomb run-eg04r01 run-dg05r01"

gg_set="run-gg01rcomb run-gg03r01 run-gg04rcomb"
eg_set="run-eg01r01 run-eg03r01 run-eg04r01"
dg_set="run-dg01rcomb run-dg04rcomb run-dg05r01"

yr="-0.01,0.01"

dir="$HOME/tmp/ngmix-plots"

#for s2n_type in T flux; do
for s2n_type in T; do
    if [[ $s2n_type == "flux" ]]; then
        xr="7,1000"
    else
        xr="2,500"
    fi

    s2n_field="${s2n_type}_s2n"
    s2n_name="${s2n_type}-s2n"

    # by size
    nsim-plot $sr20_set \
        -y "$yr" -x "$xr" \
        --s2n-field $s2n_field \
        --noshow \
        --eps "$dir/ngmix-${s2n_name}-sigrat-2.0.eps"

    nsim-plot $sr14_set \
        -y "$yr" -x "$xr" \
        --s2n-field $s2n_field \
        --noshow \
        --eps "$dir/ngmix-${s2n_name}-sigrat-1.4.eps"

    nsim-plot $sr10_set \
        -y "$yr" -x "$xr" \
        --s2n-field $s2n_field \
        --noshow \
        --eps "$dir/ngmix-${s2n_name}-sigrat-1.0.eps"

    # by type
    nsim-plot $gg_set \
        -y "$yr" -x "$xr" \
        --s2n-field $s2n_field \
        --noshow \
        --eps "$dir/ngmix-${s2n_name}-gg.eps"

    nsim-plot $eg_set \
        -y "$yr" -x "$xr" \
        --s2n-field $s2n_field \
        --noshow \
        --eps "$dir/ngmix-${s2n_name}-eg.eps"

    nsim-plot $dg_set \
        -y "$yr" -x "$xr" \
        --s2n-field $s2n_field \
        --noshow \
        --eps "$dir/ngmix-${s2n_name}-dg.eps"

done


