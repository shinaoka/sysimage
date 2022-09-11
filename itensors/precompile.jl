using ITensors
nbit = 4
sites = siteinds("Qubit", nbit)
cutoff = 1E-8
M = MPS(randomITensor(sites...), sites; cutoff=cutoff)
reconst = Array(reduce(*, M), sites)
M2 = MPO(sites, ["Z", "X", "X", "Y"])
apply(M2, M)
