include("/Users/jtindall/Files/NoFourMUBS/NumericalCampaign/Campaign/driver.jl")
for line in readlines(ARGS[1])[parse(Int, ARGS[2]):parse(Int, ARGS[3])]
    g = split(line); θ = parse.(Float64, g[4:7]); lev = parse(Int, g[3])
    println("cell ", g[1], " level ", lev, "  R_float(corner) = ", R_float(corner_E(θ)))
    try hplus_tm(θ, enl(pi/2^lev); q = 4); println("  built OK")
    catch e
        println("  ", e isa ErrorException ? e.msg : e)
        st = stacktrace(catch_backtrace())
        for fr in st[1:min(end, 16)]
            true ? println("    ", fr.func, " @ ", basename(string(fr.file)), ":", fr.line) : nothing
        end
    end
end
