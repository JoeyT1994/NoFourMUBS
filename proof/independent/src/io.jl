# Reading the plain-text certificate written by convert.py.

struct Target
    t::Int              # target record index (0-based, as in the certificate)
    sign::Int           # +1 or -1 (conjugation)
    tr::Bool            # transpose first
    rp::Vector{Int}     # row permutation, 1-based
    cp::Vector{Int}     # column permutation, 1-based
end

struct Rec
    idx::Int                 # 0-based record index
    closed::Bool
    R::Float64               # ball radius (radians)
    lr::Float64              # label-clustering radius (cycles)
    P::Matrix{Float64}       # 6x6 phase matrix, radians; P[j,c] = phi[6(j-1)+c]
    Tint::Matrix{Int64}      # 36x4; Tint[e,k] with e = 6*row + col (+1)
    targets::Vector{Target}
end

function read_certificate(path::AbstractString)
    lines = readlines(path)
    pos = 1
    nextline() = (l = lines[pos]; pos += 1; split(l))
    h = nextline(); h[1] == "FORMAT" && h[2] == "nofour-atlas-v1" || error("bad format line")
    h = nextline(); h[1] == "NRECORDS" || error("bad NRECORDS")
    nrec = parse(Int, h[2])
    recs = Rec[]
    for _ in 1:nrec
        h = nextline(); h[1] == "RECORD" || error("expected RECORD")
        idx = parse(Int, h[2]); closed = h[3] == "1"
        R = parse(Float64, h[4]); lr = parse(Float64, h[5]); nt = parse(Int, h[6])
        p = nextline(); p[1] == "PHI" && length(p) == 37 || error("bad PHI")
        phi = [parse(Float64, x) for x in p[2:end]]
        P = [phi[6(j-1)+c] for j in 1:6, c in 1:6]
        q = nextline(); q[1] == "TINT" && length(q) == 145 || error("bad TINT")
        ti = [parse(Int64, x) for x in q[2:end]]
        Tint = [ti[4(e-1)+k] for e in 1:36, k in 1:4]
        tg = Target[]
        for _ in 1:nt
            s = nextline(); s[1] == "TARGET" && length(s) == 16 || error("bad TARGET")
            v = [parse(Int, x) for x in s[2:end]]
            rp = v[4:9] .+ 1; cp = v[10:15] .+ 1
            sort(rp) == 1:6 && sort(cp) == 1:6 || error("bad permutation")
            push!(tg, Target(v[1], v[2], v[3] == 1, rp, cp))
        end
        push!(recs, Rec(idx, closed, R, lr, P, Tint, tg))
    end
    recs
end
