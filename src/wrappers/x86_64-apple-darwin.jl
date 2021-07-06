# Autogenerated wrapper script for XGBoost_jll for x86_64-apple-darwin
export libxgboost, xgboost

using CompilerSupportLibraries_jll
JLLWrappers.@generate_wrapper_header("XGBoost")
JLLWrappers.@declare_library_product(libxgboost, "@rpath/libxgboost.dylib")
JLLWrappers.@declare_executable_product(xgboost)
function __init__()
    JLLWrappers.@generate_init_header(CompilerSupportLibraries_jll)
    JLLWrappers.@init_library_product(
        libxgboost,
        "lib/libxgboost.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_executable_product(
        xgboost,
        "bin/xgboost",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
