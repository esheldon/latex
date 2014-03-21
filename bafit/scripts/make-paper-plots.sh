dir="$HOME/tmp/ngmix-plots"

#fwhm ~ 1.2
s2n_field="flux_s2n"
xr="7,1000"
yr="-0.01,0.01"
fwhm12_set="run-eg04r01 run-dg01rcomb"
nsim-plot \
    -y "$yr" -x "$xr" \
    --s2n-field $s2n_field \
    --noshow \
    --eps "$dir/ngmix-fwhm1.2.eps" \
    $fwhm12_set

exit 0

# old
#current set
#    sigrat2.0 gg01rcomb eg01r01 dg01rcomb
#    sigrat1.4 gg03r01   eg03r01 dg04rcomb
#    sigrat1.0 gg04rcomb eg04r01 dg05r01

if [[ $# -lt 1 ]]; then
    echo "make-paper-plots.sh plot_type ..."
    echo "plot_type should be  size, galtype, or weights"
    exit 1
fi



types=$@
#sr20_set="run-gg01rcomb run-eg01r01 run-dg01rcomb"
#sr14_set="run-gg03r01   run-eg03r01 run-dg04rcomb"
#sr10_set="run-gg04rcomb run-eg04r01 run-dg05r01"

sr20_set="run-eg01r01 run-dg01rcomb"
sr14_set="run-eg03r01 run-dg04rcomb"
sr10_set="run-eg04r01 run-dg05r01"

#gg_set="run-gg01rcomb run-gg03r01 run-gg04rcomb"
eg_set="run-eg01r01 run-eg03r01 run-eg04r01"
dg_set="run-dg01rcomb run-dg04rcomb run-dg05r01"

yr="-0.01,0.01"


mkdir -p $dir

for s2n_type in T flux; do
    if [[ $s2n_type == "flux" ]]; then
        xr="7,1000"
    else
        xr="2,500"
    fi

    s2n_field="${s2n_type}_s2n"
    s2n_name="${s2n_type}-s2n"

    # loop over arguments
    for type in $types; do
        if [[ $type == "size" ]]; then
            # by size
            nsim-plot \
                -y "$yr" -x "$xr" \
                --s2n-field $s2n_field \
                --noshow \
                --eps "$dir/ngmix-${s2n_name}-sigrat-2.0.eps" \
                $sr20_set

            nsim-plot \
                -y "$yr" -x "$xr" \
                --s2n-field $s2n_field \
                --noshow \
                --eps "$dir/ngmix-${s2n_name}-sigrat-1.4.eps" \
                $sr14_set

            nsim-plot \
                -y "$yr" -x "$xr" \
                --s2n-field $s2n_field \
                --noshow \
                --eps "$dir/ngmix-${s2n_name}-sigrat-1.0.eps" \
                $sr10_set

        elif [[ $type == "galtype" ]]; then
            # by type 
            #nsim-plot \
            #    -y "$yr" -x "$xr" \
            #    --s2n-field $s2n_field \
            #    --noshow \
            #    --eps "$dir/ngmix-${s2n_name}-gg.eps"
            #    $gg_set

            nsim-plot \
                -y "$yr" -x "$xr" \
                --s2n-field $s2n_field \
                --noshow \
                --eps "$dir/ngmix-${s2n_name}-eg.eps" \
                $eg_set

            nsim-plot \
                -y "$yr" -x "$xr" \
                --s2n-field $s2n_field \
                --noshow \
                --eps "$dir/ngmix-${s2n_name}-dg.eps" \
                $dg_set
        elif [[ $type == "weights" ]]; then

            nsim-plot \
                --plot-type weights \
                -x "$xr" \
                --s2n-field $s2n_field \
                --noshow \
                --eps "$dir/ngmix-${s2n_name}-weights.eps" \
                $eg_set $dg_set

        fi
    done
done


