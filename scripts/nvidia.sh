cd ${BWDIR}/work
git clone --depth 1 https://github.com/Frogging-Family/nvidia-all
rm ${BWDIR}/work/nvidia-all/customization.cfg
cp ${BWDIR}/build-scripts/cfg/nvidia-5.13.cfg ${BWDIR}/work/nvidia-all
makepkg
cd ${BWDIR}
cp ${BWDIR}/work/nvidia-all/*.pkg.tar.zst ${BWDIR}/output
rm -rf ${BWDIR}/work || true
cd ${BWDIR}