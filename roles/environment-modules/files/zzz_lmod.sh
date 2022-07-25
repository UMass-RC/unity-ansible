INCLUDE_MODULEPATHS="/modules/modulefiles"
export SPACK_CUR_ARCH=$(/modules/spack/bin/spack arch)
DEF_ARCH="linux-ubuntu20.04-x86_64"
LMOD_BASE_PATH="/modules/spack/share/spack/modules"

TOTAL_MODULEPATH="${LMOD_BASE_PATH}/${SPACK_CUR_ARCH}"
if [ ! -d "$TOTAL_MODULEPATH" ]; then
  TOTAL_MODULEPATH="${LMOD_BASE_PATH}/${DEF_ARCH}"
fi

export MODULEPATH="${TOTAL_MODULEPATH}:${INCLUDE_MODULEPATHS}"
