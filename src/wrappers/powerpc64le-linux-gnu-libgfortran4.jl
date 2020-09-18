# Autogenerated wrapper script for xfoil_light_jll for powerpc64le-linux-gnu-libgfortran4
export libxfoil_light, libxfoil_light_cs

using CompilerSupportLibraries_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `libxfoil_light`
const libxfoil_light_splitpath = ["lib", "libxfoil_light.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libxfoil_light_path = ""

# libxfoil_light-specific global declaration
# This will be filled out by __init__()
libxfoil_light_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libxfoil_light = "libxfoil_light.so"


# Relative path to `libxfoil_light_cs`
const libxfoil_light_cs_splitpath = ["lib", "libxfoil_light_cs.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libxfoil_light_cs_path = ""

# libxfoil_light_cs-specific global declaration
# This will be filled out by __init__()
libxfoil_light_cs_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libxfoil_light_cs = "libxfoil_light_cs.so"


# Inform that the wrapper is available for this platform
wrapper_available = true

"""
Open all libraries
"""
function __init__()
    # This either calls `@artifact_str()`, or returns a constant string if we're overridden.
    global artifact_dir = find_artifact_dir()

    global PATH_list, LIBPATH_list
    # Initialize PATH and LIBPATH environment variable listings
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (CompilerSupportLibraries_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (CompilerSupportLibraries_jll.LIBPATH_list,))

    global libxfoil_light_path = normpath(joinpath(artifact_dir, libxfoil_light_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libxfoil_light_handle = dlopen(libxfoil_light_path, RTLD_LAZY | RTLD_DEEPBIND)
    push!(LIBPATH_list, dirname(libxfoil_light_path))

    global libxfoil_light_cs_path = normpath(joinpath(artifact_dir, libxfoil_light_cs_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libxfoil_light_cs_handle = dlopen(libxfoil_light_cs_path, RTLD_LAZY | RTLD_DEEPBIND)
    push!(LIBPATH_list, dirname(libxfoil_light_cs_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')

    
end  # __init__()
