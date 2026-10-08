include("/Users/jtindall/Files/NoFourMUBS/NumericalCampaign/Campaign/driver.jl")
recs = readlines(ARGS[1]); a, b = parse(Int, ARGS[2]), parse(Int, ARGS[3]); out = ARGS[4]
open(out, "w") do io
    for i in a:min(b, length(recs))
        g = split(recs[i]); id = g[1]; θ0 = parse.(Float64, g[4:7]); dl = time() + 120
        function walk(θ, lev)
            time() > dl && return
            ρ = pi/2^lev; p = prune(θ, ρ)
            p in (:F_out,:R_out,:BC_out,:D0_out,:keep) && return
            lev < 11 ? foreach(c -> walk(c, lev+1), children(θ, ρ)) : println(io, id, " ", join(repr.(θ), " "))
        end
        walk(θ0, 9); flush(io)
    end
end
