using PackageCompiler
PackageCompiler.create_sysimage(["ITensors"], sysimage_path="sys_itensors.so",
                                       precompile_execution_file="precompile.jl")
