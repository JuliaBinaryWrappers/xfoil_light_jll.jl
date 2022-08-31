# Autogenerated wrapper script for xfoil_light_jll for x86_64-apple-darwin-libgfortran5
export libxfoil_light, libxfoil_light_cs

using CompilerSupportLibraries_jll
JLLWrappers.@generate_wrapper_header("xfoil_light")
JLLWrappers.@declare_library_product(libxfoil_light, "@rpath/libxfoil_light.dylib")
JLLWrappers.@declare_library_product(libxfoil_light_cs, "@rpath/libxfoil_light_cs.dylib")
function __init__()
    JLLWrappers.@generate_init_header(CompilerSupportLibraries_jll)
    JLLWrappers.@init_library_product(
        libxfoil_light,
        "lib/libxfoil_light.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libxfoil_light_cs,
        "lib/libxfoil_light_cs.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
