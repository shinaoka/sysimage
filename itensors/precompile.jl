using ITensors
using Plots
using PyPlot

x = [0.0, 1.0]
p = Plots.plot(x)
p2 = PyPlot.plot(x)

for ttype in [Float64, ComplexF64]
   nbit = 4
   sites = siteinds("Qubit", nbit)
   cutoff = 1E-8
   M = MPS(randomITensor(ttype, sites...), sites; cutoff=cutoff)
   reconst = Array(reduce(*, M), sites)
   M2 = MPO(ttype, sites, ["Z", "X", "X", "Y"])
   apply(M2, M)
end
