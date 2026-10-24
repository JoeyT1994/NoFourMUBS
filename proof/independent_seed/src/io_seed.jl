# Reading the plain-text form of a seed-atlas certificate written by convert_seed.py.  This file and convert_seed.py
# are the only places that know the certificate's layout (proof/seed_atlas/FORMAT.md); everything else works on the
# structs below.
#
# Text format (one item per line, whitespace separated; floats are float.hex strings; indices 0-based):
#   FORMAT seed-atlas-text-v2
#   COUNTS <nseeds> <nrecords> <fourier_record or -1>
#   per seed:
#     SEED <i> <o> <k> <ngroups>
#     THETA0 <4>   MTH <16, row-major>   R <1>   N <1>   LR <1>   P <36>   U <144, row-major 36 x 4>
#     per group:  GROUP <kind> <target> <g> ROWS <m> <m ints> COLS <m> <m ints> WIND <m> <m ints> NBOX <nb>
#                 BOXES <5 nb ints: level i0 i1 i2 i3, ...>
#   per record:
#     RECORD <i> <R> <label_radius> <eta_scale> <ngroups>
#     PHI <36>   TINT <144 ints>
#     groups as above (kinds rec, T1prime)
#   END
# A box (level m, i0..i3) is, in units of the object's scale (r for a seed ball, eta_scale for a record),
#   u_a in [-1 + i_a 2^(1-m), -1 + (i_a + 1) 2^(1-m)].

const MAXLEVEL = 50          # u endpoints are exact binary64 numbers up to this level

struct Group
    kind::Symbol                  # :T0, :T1, :T2 (seed sphere) or :rec, :T1p (record shell)
    target::Int                   # 0-based: a seed (T0, T1, T1p) or a record (T2, rec)
    g::Symbol                     # :id, :conj, :T, :conjT
    rows::Vector{Int}             # 1-based; ordered corner rows (T1, T1p, 3) or a permutation (T2, rec, 6)
    cols::Vector{Int}
    wind::Vector{Int}             # 4 (T0, T1, T1p) or 36 (T2, rec, row-major); empty: not given
    boxes::Vector{NTuple{5,Int}}  # (level, i0, i1, i2, i3)
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
    groups::Vector{Group}
end

struct SRecord
    rec::IA.Rec                   # the existing record struct (P, Tint, R, label radius)
    eta_scale::Float64
    groups::Vector{Group}
end

struct SeedCert
    seeds::Vector{Seed}
    records::Vector{SRecord}
    fourier::Int                  # 0-based record index of F6's record, or -1
end

"""The box (level m, i) in u units: (lo, hi), exact floats."""
function ubox(b::NTuple{5,Int})
    m = b[1]; s = ldexp(1.0, 1 - m)
    (ntuple(a -> -1.0 + b[a+1] * s, 4), ntuple(a -> -1.0 + (b[a+1] + 1) * s, 4))
end

hx(s::AbstractString) = (x = parse(Float64, s); isfinite(x) || error("non-finite float $s"); x)

"""(sign, transpose) of g acting on phases: conj negates, T transposes."""
gsign(g::Symbol) = g in (:conj, :conjT) ? -1 : 1
gtr(g::Symbol) = g in (:T, :conjT)

function read_seed_certificate(path::AbstractString)
    lines = readlines(path)
    pos = 1
    nextline() = (l = split(lines[pos]); pos += 1; l)
    function expect(l, key, n)
        (length(l) == n + 1 && l[1] == key) || error("line $(pos - 1): expected $key with $n values")
        l[2:end]
    end
    h = nextline(); (length(h) == 2 && h[1] == "FORMAT" && h[2] == "seed-atlas-text-v2") || error("bad FORMAT line")
    ns, nr, fr = parse.(Int, expect(nextline(), "COUNTS", 3))
    function read_group()
        l = nextline(); l[1] == "GROUP" || error("line $(pos - 1): expected GROUP")
        kind = Symbol(l[2]); tgt = parse(Int, l[3]); g = Symbol(l[4])
        kind == :T1prime && (kind = :T1p)
        kind in (:T0, :T1, :T2, :rec, :T1p) || error("unknown transfer kind $kind")
        g in (:id, :conj, :T, :conjT) || error("unknown g $g")
        i = 5
        function take(key)
            l[i] == key || error("GROUP: expected $key")
            m = parse(Int, l[i+1]); v = parse.(Int, l[i+2:i+1+m]); i += m + 2
            v
        end
        rows = take("ROWS") .+ 1; cols = take("COLS") .+ 1; wind = take("WIND")
        (l[i] == "NBOX" && length(l) == i + 1) || error("GROUP: expected NBOX")
        nb = parse(Int, l[i+1])
        bl = nextline()
        (bl[1] == "BOXES" && length(bl) == 5nb + 1) || error("line $(pos - 1): expected BOXES with $nb boxes")
        v = parse.(Int, bl[2:end])
        boxes = [(v[5j-4], v[5j-3], v[5j-2], v[5j-1], v[5j]) for j in 1:nb]
        for b in boxes
            (0 <= b[1] <= MAXLEVEL && all(0 <= b[a] < (1 << b[1]) for a in 2:5)) || error("GROUP: bad box $b")
        end
        if kind in (:T1, :T1p)
            (length(rows) == 3 && length(cols) == 3 && allunique(rows) && allunique(cols) && all(1 .<= rows .<= 6) &&
             all(1 .<= cols .<= 6)) || error("GROUP: bad corner")
            length(wind) in (0, 4) || error("GROUP: winding of length $(length(wind))")
        elseif kind in (:T2, :rec)
            (sort(rows) == 1:6 && sort(cols) == 1:6) || error("GROUP: bad permutation")
            length(wind) in (0, 36) || error("GROUP: winding of length $(length(wind))")
        else
            length(wind) in (0, 4) || error("GROUP: winding of length $(length(wind))")
        end
        Group(kind, tgt, g, rows, cols, wind, boxes)
    end
    seeds = Seed[]
    for _ in 1:ns
        idx, o, k, ng = parse.(Int, expect(nextline(), "SEED", 4))
        o in (1, -1) || error("seed $idx: o must be +-1")
        k >= 1 || error("seed $idx: k must be >= 1")
        th = Tuple(hx.(expect(nextline(), "THETA0", 4)))
        M = hx.(expect(nextline(), "MTH", 16)); Mth = [M[4(a-1)+b] for a in 1:4, b in 1:4]
        r = hx(expect(nextline(), "R", 1)[1]); n = hx(expect(nextline(), "N", 1)[1]); lr = hx(expect(nextline(), "LR", 1)[1])
        (r > 0 && n >= 0 && lr > 0) || error("seed $idx: r, n, label_radius must be positive")
        P = hx.(expect(nextline(), "P", 36))
        Uv = hx.(expect(nextline(), "U", 144)); U = [Uv[4(e-1)+j] for e in 1:36, j in 1:4]
        gs = [read_group() for _ in 1:ng]
        all(g -> g.kind in (:T0, :T1, :T2), gs) || error("seed $idx: a sphere transfer must be T0, T1 or T2")
        push!(seeds, Seed(idx, o, k, th, Mth, r, n, lr, P, U, gs))
    end
    recs = SRecord[]
    for _ in 1:nr
        l = expect(nextline(), "RECORD", 5)
        idx = parse(Int, l[1]); R = hx(l[2]); lr = hx(l[3]); es = hx(l[4]); ng = parse(Int, l[5])
        (R > 0 && lr > 0 && es > 0) || error("record $idx: R, label_radius, eta_scale must be positive")
        phi = hx.(expect(nextline(), "PHI", 36))
        P = [phi[6(j-1)+c] for j in 1:6, c in 1:6]
        ti = parse.(Int64, expect(nextline(), "TINT", 144))
        Tint = [ti[4(e-1)+k] for e in 1:36, k in 1:4]
        gs = [read_group() for _ in 1:ng]
        all(g -> g.kind in (:rec, :T1p), gs) || error("record $idx: a shell group must be rec or T1prime")
        push!(recs, SRecord(IA.Rec(idx, true, R, lr, P, Tint, IA.Target[]), es, gs))
    end
    (pos <= length(lines) && strip(lines[pos]) == "END" && pos == length(lines)) || error("expected END as the last line")
    for (i, s) in enumerate(seeds)
        s.idx == i - 1 || error("seed indices must be 0, 1, 2, ...")
    end
    for (i, r) in enumerate(recs)
        r.rec.idx == i - 1 || error("record indices must be 0, 1, 2, ...")
    end
    SeedCert(seeds, recs, fr)
end
