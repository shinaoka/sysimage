julia create.jl

cp sys_itensors.so /sharehome/shinaoka/.julia/sysimages/

julia -e 'using IJulia; installkernel("Julia (ITensors, 8 threads)", "--sysimage=/sharehome/shinaoka/.julia/sysimages/sys_itensors.so", env=Dict("JULIA_NUM_THREADS"=>"8"))'
julia -e 'using IJulia; installkernel("Julia (ITensors, 32 threads)", "--sysimage=/sharehome/shinaoka/.julia/sysimages/sys_itensors.so", env=Dict("JULIA_NUM_THREADS"=>"32"))'
julia -e 'using IJulia; installkernel("Julia (ITensors, 64 threads)", "--sysimage=/sharehome/shinaoka/.julia/sysimages/sys_itensors.so", env=Dict("JULIA_NUM_THREADS"=>"64"))'
