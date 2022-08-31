# Autogenerated wrapper script for xfoil_light_jll for i686-w64-mingw32-libgfortran4
export libxfoil_light, libxfoil_light_cs

using CompilerSupportLibraries_jll
JLLWrappers.@generate_wrapper_header("xfoil_light")
JLLWrappers.@declare_library_product(libxfoil_light, "libxfoil_light.dll")
JLLWrappers.@declare_library_product(libxfoil_light_cs, "libxfoil_light_cs.dll")
function __init__()
    JLLWrappers.@generate_init_header(CompilerSupportLibraries_jll)
    JLLWrappers.@init_library_product(
        libxfoil_light,
        "bin\\libxfoil_light.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libxfoil_light_cs,
        "bin\\libxfoil_light_cs.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
