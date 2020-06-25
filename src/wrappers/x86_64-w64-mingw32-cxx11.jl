# Autogenerated wrapper script for XGBoost_jll for x86_64-w64-mingw32-cxx11
export libxgboost, xgboost

using CompilerSupportLibraries_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "PATH"
LIBPATH_default = ""

# Relative path to `libxgboost`
const libxgboost_splitpath = ["bin", "xgboost.dll"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libxgboost_path = ""

# libxgboost-specific global declaration
# This will be filled out by __init__()
libxgboost_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libxgboost = "xgboost.dll"


# Relative path to `xgboost`
const xgboost_splitpath = ["bin", "xgboost.exe"]

# This will be filled out by __init__() for all products, as it must be done at runtime
xgboost_path = ""

# xgboost-specific global declaration
function xgboost(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(PATH, ';', ENV["PATH"])
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        LIBPATH_base = get(ENV, LIBPATH_env, expanduser(LIBPATH_default))
        if !isempty(LIBPATH_base)
            env_mapping[LIBPATH_env] = string(LIBPATH, ';', LIBPATH_base)
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(xgboost_path)
    end
end


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"XGBoost")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (CompilerSupportLibraries_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (CompilerSupportLibraries_jll.LIBPATH_list,))

    global libxgboost_path = normpath(joinpath(artifact_dir, libxgboost_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libxgboost_handle = dlopen(libxgboost_path)
    push!(LIBPATH_list, dirname(libxgboost_path))

    global xgboost_path = normpath(joinpath(artifact_dir, xgboost_splitpath...))

    push!(PATH_list, dirname(xgboost_path))
    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ';')
    global LIBPATH = join(vcat(LIBPATH_list, [Sys.BINDIR, joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ';')
end  # __init__()

