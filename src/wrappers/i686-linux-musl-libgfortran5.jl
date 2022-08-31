# Autogenerated wrapper script for xfoil_light_jll for i686-linux-musl-libgfortran5
export libxfoil_light, libxfoil_light_cs

using CompilerSupportLibraries_jll
JLLWrappers.@generate_wrapper_header("xfoil_light")
JLLWrappers.@declare_library_product(libxfoil_light, "libxfoil_light.so")
JLLWrappers.@declare_library_product(libxfoil_light_cs, "libxfoil_light_cs.so")
function __init__()
    JLLWrappers.@generate_init_header(CompilerSupportLibraries_jll)
    JLLWrappers.@init_library_product(
        libxfoil_light,
        "lib/libxfoil_light.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libxfoil_light_cs,
        "lib/libxfoil_light_cs.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
