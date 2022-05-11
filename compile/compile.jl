using PackageCompiler
using Pkg
Pkg.activate(dirname(@__DIR__))

create_sysimage(; sysimage_path = "fibsem_sysimg.so", filter_stdlibs = true, incremental=false, script="demo.jl")
