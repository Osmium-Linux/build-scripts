set -x
rm -rf ${BWDIR}/work || true
mkdir ${BWDIR}/work
cd ${BWDIR}/work
pwd
git clone --depth 1 https://github.com/Frogging-Family/linux-tkg
rm ./linux-tkg/customization.cfg
cd ${BWDIR}
cp ${BWDIR}/build-scripts/cfg/zenbook-14-4700u.cfg ${BWDIR}/work/linux-tkg/customization.cfg
cd ${BWDIR}/work/linux-tkg/
pwd
makepkg -s 
cd ${BWDIR}
pwd
cp ${BWDIR}/work/linux-tkg/*.pkg.tar.zst ${BWDIR}/output/
rm -rf ${BWDIR}/work || true
