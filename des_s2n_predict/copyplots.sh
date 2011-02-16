#!/bin/sh

fromdir=~/data/des_sensitivity/goods/sensitivity.new/plots

todir=plots

if [ ! -d $todir ]; then
    mkdir $todir
fi

for file in \
    des5yr-convolved-maxmag30.0-seeing0.90-weight-vs-mag.eps \
    des5yr-convolved-maxmag30.0-seeing0.90-density-vs-mag.eps \
    des5yr-convolved-maxmag30.0-neff-vs-seeing.eps \
    des5yr-convolved-maxmag24.1-neff-vs-seeing.eps \
    des5yr-convolved-maxmag30.0-neff-vs-zs.eps \
    des5yr-convolved-maxmag24.1-neff-vs-zs.eps \
    des5yr-convolved-maxmag30.0-neff-vs-zl.eps \
    des5yr-convolved-maxmag24.1-neff-vs-zl.eps \
            ; do

    echo "    $file"
    cp -f $fromdir/$file $todir/
done

cp ~/data/des_sensitivity/goods/galaxy_distribution_model_v1.0/lfmodel-out-zdist-hdf-IAB-combined-nofz.eps $todir/

