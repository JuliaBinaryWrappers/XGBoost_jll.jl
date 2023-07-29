# `XGBoost_jll.jl` (v1.7.6+0)

[![deps](https://juliahub.com/docs/XGBoost_jll/deps.svg)](https://juliahub.com/ui/Packages/XGBoost_jll/AJezb?page=2)

This is an autogenerated package constructed using [`BinaryBuilder.jl`](https://github.com/JuliaPackaging/BinaryBuilder.jl).

The originating [`build_tarballs.jl`](https://github.com/JuliaPackaging/Yggdrasil/blob/54089f5fc7de32bbfde9081d8e7487480cc64f84/X/XGBoost/build_tarballs.jl) script can be found on [`Yggdrasil`](https://github.com/JuliaPackaging/Yggdrasil/), the community build tree.

## Bug Reports

If you have any issue, please report it to the Yggdrasil [bug tracker](https://github.com/JuliaPackaging/Yggdrasil/issues).

## Documentation

For more details about JLL packages and how to use them, see `BinaryBuilder.jl` [documentation](https://docs.binarybuilder.org/stable/jll/).

## Sources

The tarballs for `XGBoost_jll.jl` have been built from these sources:

* git repository: https://github.com/dmlc/xgboost.git (revision: `36eb41c960483c8b52b44082663c99e6a0de440a`)
* files in directory, relative to originating `build_tarballs.jl`: [`./bundled`](https://github.com/JuliaPackaging/Yggdrasil/tree/54089f5fc7de32bbfde9081d8e7487480cc64f84/X/XGBoost/bundled)

## Platforms

`XGBoost_jll.jl` is available for the following platforms:

* `Linux x86_64 {cuda=12.0, cxxstring_abi=cxx11, libc=glibc}` (`x86_64-linux-gnu-cxx11-cuda+12.0`)

## Dependencies

The following JLL packages are required by `XGBoost_jll.jl`:

* [`CUDA_Runtime_jll`](https://github.com/JuliaBinaryWrappers/CUDA_Runtime_jll.jl)
* [`CompilerSupportLibraries_jll`](https://github.com/JuliaBinaryWrappers/CompilerSupportLibraries_jll.jl)
* [`LLVMOpenMP_jll`](https://github.com/JuliaBinaryWrappers/LLVMOpenMP_jll.jl)

## Products

The code bindings within this package are autogenerated from the following `Products`:

* `LibraryProduct`: `libxgboost`
* `ExecutableProduct`: `xgboost`
