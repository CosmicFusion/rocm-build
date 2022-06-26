#!/bin/bash

set -e

mkdir -p build/rocm-ubuntu2204
cd build/rocm-ubuntu2204
pushd .

mkdir -p dists/jammy/main/binary-amd64
mkdir -p pool/main/{c,h,m,r}

cat > dists/jammy/main/binary-amd64/Release <<EOF
Origin: rocm-ubuntu2204
Label: rocm-ubuntu2204
Suite: jammy
Codename: jammy
Version: 5.1.3
Architectures: amd64
Components: main
Description: ROCm ubuntu2204 APT Repository
EOF

mkdir -p pool/main/c/comgr
cp $ROCM_BUILD_DIR/rocm-compilersupport/comgr_*.deb pool/main/c/comgr/

mkdir -p pool/main/h/half
cp $ROCM_BUILD_DIR/half/half_*.deb pool/main/h/half
mkdir -p pool/main/h/{hip-dev,hip-doc,hip-runtime-amd,hip-samples}
cp $ROCM_BUILD_DIR/hip/hip-dev_*.deb pool/main/h/hip-dev
cp $ROCM_BUILD_DIR/hip/hip-doc_*.deb pool/main/h/hip-doc
cp $ROCM_BUILD_DIR/hip/hip-runtime-amd_*.deb pool/main/h/hip-runtime-amd
cp $ROCM_BUILD_DIR/hip/hip-samples_*.deb pool/main/h/hip-samples
mkdir -p pool/main/h/{hipblas,hipblas-dev}
cp $ROCM_BUILD_DIR/hipblas/hipblas_*.deb pool/main/h/hipblas
cp $ROCM_BUILD_DIR/hipblas/hipblas-dev_*.deb pool/main/h/hipblas-dev
mkdir -p pool/main/h/hipcub-dev
cp $ROCM_BUILD_DIR/hipcub/hipcub-dev_*.deb pool/main/h/hipcub-dev
mkdir -p pool/main/h/{hipfft,hipfft-dev}
cp $ROCM_BUILD_DIR/hipfft/hipfft_*.deb pool/main/h/hipfft
cp $ROCM_BUILD_DIR/hipfft/hipfft-dev_*.deb pool/main/h/hipfft-dev
mkdir -p pool/main/h/{hipfort,hipfort-dev}
cp $ROCM_BUILD_DIR/hipfort/hipfort_*.deb pool/main/h/hipfort
cp $ROCM_BUILD_DIR/hipfort/hipfort-dev_*.deb pool/main/h/hipfort-dev
mkdir -p pool/main/h/hipify
cp $ROCM_BUILD_DIR/hipify/hipify_*.deb pool/main/h/hipify
mkdir -p pool/main/h/{hipsolver,hipsolver-dev}
cp $ROCM_BUILD_DIR/hipsolver/hipsolver_*.deb pool/main/h/hipsolver
cp $ROCM_BUILD_DIR/hipsolver/hipsolver-dev_*.deb pool/main/h/hipsolver-dev
mkdir -p pool/main/h/{hipsparse,hipsparse-dev}
cp $ROCM_BUILD_DIR/hipsparse/hipsparse_*.deb pool/main/h/hipsparse
cp $ROCM_BUILD_DIR/hipsparse/hipsparse-dev_*.deb pool/main/h/hipsparse-dev
mkdir -p pool/main/h/{hsa-rocr,hsa-rocr-dev}
cp $ROCM_BUILD_DIR/rocr-runtime/hsa-rocr_*.deb pool/main/h/hsa-rocr
cp $ROCM_BUILD_DIR/rocr-runtime/hsa-rocr-dev_*.deb pool/main/h/hsa-rocr-dev
mkdir -p pool/main/h/hsakmt-roct-dev
cp $ROCM_BUILD_DIR/roct-thunk-interface/hsakmt-roct-dev_*.deb pool/main/h/hsakmt-roct-dev


mkdir -p pool/main/m/{miopen-hip,miopen-hip-dev}
cp $ROCM_BUILD_DIR/miopen/miopen-hip_*.deb pool/main/m/miopen-hip
cp $ROCM_BUILD_DIR/miopen/miopen-hip-dev_*.deb pool/main/m/miopen-hip-dev

mkdir -p pool/main/r/{rccl,rccl-dev}
cp $ROCM_BUILD_DIR/rccl/rccl_*.deb pool/main/m/rccl
cp $ROCM_BUILD_DIR/rccl/rccl-dev_*.deb pool/main/m/rccl-dev
mkdir -p pool/main/r/{rocalution,rocalution-dev}
cp $ROCM_BUILD_DIR/rocalution/rocalution_*.deb pool/main/m/rocalution
cp $ROCM_BUILD_DIR/rocalution/rocalution-dev_*.deb pool/main/m/rocalution-dev
mkdir -p pool/main/r/{rocblas,rocblas-dev}
cp $ROCM_BUILD_DIR/rocblas/rocblas_*.deb pool/main/m/rocblas
cp $ROCM_BUILD_DIR/rocblas/rocblas-dev_*.deb pool/main/m/rocblas-dev
mkdir -p pool/main/r/{rocfft,rocfft-dev}
cp $ROCM_BUILD_DIR/rocfft/rocfft_*.deb pool/main/m/rocfft
cp $ROCM_BUILD_DIR/rocfft/rocfft-dev_*.deb pool/main/m/rocfft-dev
mkdir -p pool/main/r/rocm-bandwidth-test
cp $ROCM_BUILD_DIR/rocm-bandwidth-test/rocm-bandwidth-test_*.deb pool/main/m/rocm-bandwidth-test
mkdir -p pool/main/r/rocm-clang-ocl
cp $ROCM_BUILD_DIR/rocm-clang-ocl/rocm-clang-ocl_*.deb pool/main/m/rocm-clang-ocl
mkdir -p pool/main/r/rocm-cmake
cp $ROCM_BUILD_DIR/rocm-cmake/rocm-cmake_*.deb pool/main/m/rocm-cmake
mkdir -p pool/main/r/rocm-core
cp $ROCM_BUILD_DIR/rocm-core/rocm-core_*.deb pool/main/m/rocm-core
mkdir -p pool/main/r/rocm-dbgapi
cp $ROCM_BUILD_DIR/rocm-dbgapi/rocm-dbgapi_*.deb pool/main/m/rocm-dbgapi
mkdir -p pool/main/r/rocm-debug-agent
cp $ROCM_BUILD_DIR/rocm-debug-agent/rocm-debug-agent_*.deb pool/main/m/rocm-debug-agent
mkdir -p pool/main/r/rocm-dev
cp $ROCM_BUILD_DIR/rocm-dev/rocm-dev_*.deb pool/main/m/rocm-dev
mkdir -p pool/main/r/rocm-device-libs
cp $ROCM_BUILD_DIR/rocm-device-libs/rocm-device-libs_*.deb pool/main/m/rocm-device-libs
mkdir -p pool/main/r/rocm-libs
cp $ROCM_BUILD_DIR/rocm-libs/rocm-libs_*.deb pool/main/m/rocm-libs
mkdir -p pool/main/r/rocm-llvm
cp $ROCM_BUILD_DIR/rocm-llvm/rocm-llvm_*.deb pool/main/m/rocm-llvm
mkdir -p pool/main/r/rocm-ocl-icd
cp $ROCM_BUILD_DIR/rocm-ocl-icd/rocm-ocl-icd_*.deb pool/main/m/rocm-ocl-icd
mkdir -p pool/main/r/{rocm-opencl,rocm-opencl-dev}
cp $ROCM_BUILD_DIR/rocm-opencl/rocm-opencl_*.deb pool/main/m/rocm-opencl
cp $ROCM_BUILD_DIR/rocm-opencl/rocm-opencl-dev_*.deb pool/main/m/rocm-opencl-dev
mkdir -p pool/main/r/rocm-smi-lib
cp $ROCM_BUILD_DIR/rocm-smi-lib/rocm-smi-lib_*.deb pool/main/m/rocm-smi-lib
mkdir -p pool/main/r/rocm-utils
cp $ROCM_BUILD_DIR/rocm-utils/rocm-utils_*.deb pool/main/m/rocm-utils
mkdir -p pool/main/r/rocm-validation-suite
cp $ROCM_BUILD_DIR/rocm-validation-suite/rocm-validation-suite_*.deb pool/main/m/rocm-validation-suite
mkdir -p pool/main/r/rocminfo
cp $ROCM_BUILD_DIR/rocminfo/rocminfo_*.deb pool/main/m/rocminfo
mkdir -p pool/main/r/rocprim-dev
cp $ROCM_BUILD_DIR/rocprim-dev/rocprim-dev_*.deb pool/main/m/rocprim-dev
mkdir -p pool/main/r/rocprofiler-dev
cp $ROCM_BUILD_DIR/rocprofiler-dev/rocprofiler-dev_*.deb pool/main/m/rocprofiler-dev
mkdir -p pool/main/r/{rocrand,rocrand-dev}
cp $ROCM_BUILD_DIR/rocrand/rocrand_*.deb pool/main/m/rocrand
cp $ROCM_BUILD_DIR/rocrand/rocrand-dev_*.deb pool/main/m/rocrand-dev
mkdir -p pool/main/r/{rocsolver,rocsolver-dev}
cp $ROCM_BUILD_DIR/rocsolver/rocsolver_*.deb pool/main/m/rocsolver
cp $ROCM_BUILD_DIR/rocsolver/rocsolver-dev_*.deb pool/main/m/rocsolver-dev
mkdir -p pool/main/r/{rocsparse,rocsparse-dev}
cp $ROCM_BUILD_DIR/rocsparse/rocsparse_*.deb pool/main/m/rocsparse
cp $ROCM_BUILD_DIR/rocsparse/rocsparse-dev_*.deb pool/main/m/rocsparse-dev
mkdir -p pool/main/r/rocthrust
cp $ROCM_BUILD_DIR/rocthrust/rocthrust_*.deb pool/main/m/rocthrust
mkdir -p pool/main/r/roctracer-dev
cp $ROCM_BUILD_DIR/roctracer-dev/roctracer-dev_*.deb pool/main/m/roctracer-dev

dpkg-scanpackages -m . > dists/jammy/main/binary-amd64/Packages

cd dists/jammy

apt-ftparchive release . > Release

# gpg --armor --detach-sign --sign -o Release.gpg Release

# gpg --clearsign -o InRelease Release

popd
