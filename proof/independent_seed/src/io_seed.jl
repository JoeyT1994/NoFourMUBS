# Reading the plain-text form of a seed-atlas certificate written by convert_seed.py.  This file and convert_seed.py
# are the only places that know the certificate's layout; everything else works on the structs below.
#
# Text format (one item per line, whitespace separated; floats are float.hex strings, indices 0-based):
#   FORMAT seed-atlas-text-v1
#   COUNTS <nseeds> <nrecords> <fourier_record or -1>
#   per seed:
#     SEED <i> <o> <k> <ntransfers>
#     THETA0 <4>   MTH <16, row-major>   R <1>   N <1>   LR <1>   P <36>   U <144, row-major 36 x 4>
#     XFER <kind> <target> <g> LO <4> HI <4> ROWS <3> COLS <3> SIGN <s> TR <0/1> RP <6> CP <6> WIND <m> <m ints>
#   per record:
#     RECORD <i> <closed 0/1> <R> <label_radius> <ntargets> <nboxes>
#     PHI <36>   TINT <144 ints>
#     TARGET <t> <sign> <tr 0/1> <rowperm 6> <colperm 6>          (ntargets lines; the current atlas list)
#     XFER ...                                                      (nboxes lines; kind rec or T1prime)
# In an XFER line every field is present; fields a kind does not use are written as 0 / identity, and WIND 0 means
# "no winding given" (the checker then chooses one; any integer winding is valid).

struct Xfer
    kind::Symbol                  # :T0, :T1, :T2 (seed sphere) or :rec, :T1p (record shell)
    target::Int                   # 0-based: a seed (T0, T1, T1p) or a record (T2, rec)
    g::Symbol                     # :id, :conj, :T, :conjT (T1, T1p; for T2 / rec it is folded into sign, tr)
    lo::NTuple{4,Float64}
    hi::NTuple{4,Float64}
    rows::NTuple{3,Int}           # 1-based corner rows I = (i0, i1, i2) (T1, T1p)
    cols::NTuple{3,Int}           # 1-based corner columns J
    sign::Int                     # T2 / rec: A(X) = sign * (tr ? X^T : X)[rp, cp]
    tr::Bool
    rp::Vector{Int}               # 1-based
    cp::Vector{Int}
    wind::Vector{Int}             # empty: not given
end

struct Seed
    idx::Int
    o::Int
    k::Int
    theta0::NTuple{4,Float64}
    Mth::Matrix{Float64}          # 4 x 4
    r::Float64
    n::Float64
    lr::Float64
    P::Vector{Float64}            # 36, row-major, radians
    U::Matrix{Float64}            # 36 x 4
    xfers::Vector{Xfer}
end

struct SRecord
    rec::IA.Rec                   # the existing record struct (P, Tint, R, label radius, current target list)
    xfers::Vector{Xfer}
end

struct SeedCert
    seeds::Vector{Seed}
    records::Vector{SRecord}
    fourier::Int                  # 0-based record index of F6's record, or -1
end

hx(s::AbstractString) = (x = parse(Float64, s); isfinite(x) || error("non-finite float $s"); x)

function read_seed_certificate(path::AbstractString)
    toks = String[]
    lines = readlines(path)
    pos = 1
    nextline() = (l = split(lines[pos]); pos += 1; l)
    function expect(l, key, n)
        (length(l) == n + 1 && l[1] == key) || error("line $(pos - 1): expected $key with $n values, got $(l[1:min(end, 3)])")
        l[2:end]
    end
    h = nextline(); (h[1] == "FORMAT" && h[2] == "seed-atlas-text-v1") || error("bad FORMAT line")
    c = expect(nextline(), "COUNTS", 3)
    ns, nr, fr = parse.(Int, c)
    function read_xfer()
        l = nextline(); l[1] == "XFER" || error("line $(pos - 1): expected XFER")
        kind = Symbol(l[2]); tgt = parse(Int, l[3]); g = Symbol(l[4])
        kind in (:T0, :T1, :T2, :rec, :T1prime) || error("unknown transfer kind $kind")
        kind == :T1prime && (kind = :T1p)
        g in (:id, :conj, :T, :conjT) || error("unknown g $g")
        i = 5
        take(key, n) = (l[i] == key || error("XFER: expected $key at field $i"); v = l[i+1:i+n]; i += n + 1; v)
        lo = Tuple(hx.(take("LO", 4))); hi = Tuple(hx.(take("HI", 4)))
        all(lo[j] <= hi[j] for j in 1:4) || error("XFER: box with lo > hi")
        rows = Tuple(parse.(Int, take("ROWS", 3)) .+ 1); cols = Tuple(parse.(Int, take("COLS", 3)) .+ 1)
        sg = parse(Int, take("SIGN", 1)[1]); tr = take("TR", 1)[1] == "1"
        rp = parse.(Int, take("RP", 6)) .+ 1; cp = parse.(Int, take("CP", 6)) .+ 1
        l[i] == "WIND" || error("XFER: expected WIND"); m = parse(Int, l[i+1])
        wind = parse.(Int, l[i+2:i+1+m]); i += 2 + m
        i == length(l) + 1 || error("XFER: trailing fields")
        sg in (1, -1) || error("XFER: sign must be +-1")
        (sort(rp) == 1:6 && sort(cp) == 1:6) || error("XFER: bad permutation")
        if kind in (:T1, :T1p)
            (length(unique(rows)) == 3 && length(unique(cols)) == 3 && all(1 .<= rows .<= 6) && all(1 .<= cols .<= 6)) ||
                error("XFER: bad corner")
        end
        m in (0, 4, 36) || error("XFER: winding of length $m")
        Xfer(kind, tgt, g, lo, hi, rows, cols, sg, tr, rp, cp, wind)
    end
    seeds = Seed[]
    for _ in 1:ns
        l = expect(nextline(), "SEED", 4)
        idx, o, k, nx = parse.(Int, l)
        o in (1, -1) || error("seed $idx: o must be +-1")
        k >= 1 || error("seed $idx: k must be >= 1")
        th = Tuple(hx.(expect(nextline(), "THETA0", 4)))
        M = hx.(expect(nextline(), "MTH", 16)); Mth = [M[4(a-1)+b] for a in 1:4, b in 1:4]
        r = hx(expect(nextline(), "R", 1)[1]); n = hx(expect(nextline(), "N", 1)[1]); lr = hx(expect(nextline(), "LR", 1)[1])
        (r > 0 && n >= 0 && lr > 0) || error("seed $idx: r, n, label_radius must be positive")
        P = hx.(expect(nextline(), "P", 36))
        Uv = hx.(expect(nextline(), "U", 144)); U = [Uv[4(e-1)+j] for e in 1:36, j in 1:4]
        xs = [read_xfer() for _ in 1:nx]
        all(x -> x.kind in (:T0, :T1, :T2), xs) || error("seed $idx: a sphere transfer must be T0, T1 or T2")
        push!(seeds, Seed(idx, o, k, th, Mth, r, n, lr, P, U, xs))
    end
    recs = SRecord[]
    for _ in 1:nr
        l = expect(nextline(), "RECORD", 6)
        idx = parse(Int, l[1]); closed = l[2] == "1"; R = hx(l[3]); lr = hx(l[4]); nt = parse(Int, l[5]); nb = parse(Int, l[6])
        phi = hx.(expect(nextline(), "PHI", 36))
        P = [phi[6(j-1)+c] for j in 1:6, c in 1:6]
        ti = parse.(Int64, expect(nextline(), "TINT", 144))
        Tint = [ti[4(e-1)+k] for e in 1:36, k in 1:4]
        tg = IA.Target[]
        for _ in 1:nt
            s = expect(nextline(), "TARGET", 15)
            v = parse.(Int, s)
            rp = v[4:9] .+ 1; cp = v[10:15] .+ 1
            (sort(rp) == 1:6 && sort(cp) == 1:6) || error("record $idx: bad permutation")
            push!(tg, IA.Target(v[1], v[2], v[3] == 1, rp, cp))
        end
        xs = [read_xfer() for _ in 1:nb]
        all(x -> x.kind in (:rec, :T1p), xs) || error("record $idx: a shell box must be rec or T1prime")
        push!(recs, SRecord(IA.Rec(idx, closed, R, lr, P, Tint, tg), xs))
    end
    pos == length(lines) + 1 || (strip(lines[pos]) == "END" || error("trailing lines in the certificate"))
    for (i, s) in enumerate(seeds)
        s.idx == i - 1 || error("seed indices must be 0, 1, 2, ...")
    end
    for (i, r) in enumerate(recs)
        r.rec.idx == i - 1 || error("record indices must be 0, 1, 2, ...")
    end
    SeedCert(seeds, recs, fr)
end
