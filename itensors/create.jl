using PackageCompiler
PackageCompiler.create_sysimage(["ITensors", "PyPlot", "Plots"], sysimage_path="sys_itensors.so",
                                       precompile_execution_file="precompile.jl")
