include(joinpath(@__DIR__, "..", "cover_accelerated.jl"))
using Test, Random
Random.seed!(20260929)
BLAS.set_num_threads(1)

@testset "sharp phase-box capacity" begin
    @test certified_box_capacity(zeros(5))
    @test certified_box_capacity(fill(0.65,5))
    @test !certified_box_capacity(fill(0.66,5))
    @test certified_box_capacity([pi,0.01,0.01,0.01,0.01])
    @test !certified_box_capacity(fill(pi,5))
    @test !certified_box_capacity([-0.1,0,0,0,0])
    @test !certified_box_capacity(fill(NaN,5))
    setprecision(BigFloat,256) do
        threshold = acos(BigFloat(1)/4)/2
        below = prevfloat(Float64(threshold)); above = nextfloat(Float64(threshold))
        # Float64 intervals may conservatively reject points extremely near equality.
        @test !certified_box_capacity(fill(above,5))
        @test certified_box_capacity(fill(Float64(threshold)-1e-10,5))
        @test 24*(BigFloat(1)/4)^2+10*(BigFloat(1)/4)+2 == 6
        for _ in 1:1000
            r = 0.78 .* rand(5)
            rb = BigFloat.(r)
            # Independent complex evaluation of all 32 actual opposite-corner pairs.
            vertexmin = minimum(abs2(1 + sum(cis((isodd(mask >> (k-1)) ? 2 : -2)*rb[k]) for k in 1:5)) for mask in 0:31)
            @test !certified_box_capacity(r) || vertexmin > 6
            @test abs(vertexmin-6)>big"1e-10" ? certified_box_capacity(r)==(vertexmin>6) : true
            for _ in 1:8
                d = (2 .* BigFloat.(rand(5)) .- 1) .* (2rb)
                @test abs2(1+sum(cis.(d))) >= vertexmin-big"1e-65"
            end
        end
    end
end

function fourier_cell()
    h = zeros(ComplexF64,6,6,15)
    hc = fill(complex(interval(0.0),interval(0.0)),6,6,15)
    for k in 0:5, j in 0:5
        a = 2interval(pi)*k*j/6
        hc[k+1,j+1,1] = complex(cos(a),sin(a))
        h[k+1,j+1,1] = cis(2pi*k*j/6)
    end
    CoverCell(FastCell(15,h,zeros(6,6),zeros(6,6)),hc,
        fill(interval(0.0),6,6),fill(interval(0.0),6,6))
end

@testset "non-exclusion controls and interval coefficients" begin
    cc = fourier_cell(); v = CartesianVerifier()
    # The six even-length quadratic chirps are actual common unbiased rays.
    # Centres below are rounded; the boxes contain the exact chirp phases.
    for shift in 0:5, w in (1e-10,0.01,0.8,PCHART)
        c = [angle(cis(pi*k^2/6+2pi*shift*k/6)) for k in 1:5]
        @test !v(cc,c,fill(w,5))
    end
    @test v(cc,zeros(5),fill(0.001,5)) # Fourier column, hence not unbiased.
    # Independent natural interval evaluation for narrow random Fourier boxes.
    for _ in 1:1000
        c = 2pi .* rand(5) .- pi; w = fill(1e-5,5)
        if v(cc,c,w)
            # Evaluate the actual full phase intervals, with no rotation/seed expansion.
            z = [complex(interval(1.0),interval(0.0));
                 [complex(cos(interval(c[k])+interval(-w[k],w[k])),
                          sin(interval(c[k])+interval(-w[k],w[k]))) for k in 1:5]]
            sq = [abs2(sum(z[k]*conj(cc.hc[k,j,1]) for k in 1:6)) for j in 1:6]
            @test any(q -> sup(q)<6 || inf(q)>6, sq)
        end
    end
end

@testset "graph keeps an actual 6+6 configuration" begin
    # Fourier basis and its quadratic-chirp modulation are mutually unbiased.
    labels = [(Float64[2pi*j*k/6+family*pi*k^2/6 for k in 1:5],fill(1e-8,5),[6family+j+1])
              for family in 0:1 for j in 0:5]
    @test first(label_graph_test(labels)) == :candidates
    @test first(label_graph_test(labels;tight_pairs=true)) == :candidates
    copies = [(zeros(5),fill(1e-8,5),[i]) for i in 1:12]
    @test first(label_graph_test(copies;tight_pairs=true)) == :excluded
end

@testset "partition covers every input box" begin
    p=PCHART; step=2p/128
    boxes=[([-p+step*j,-p+step*32,-p+step*32,-p+step*32,-p+step*32],
            [-p+step*(j+1),-p+step*33,-p+step*33,-p+step*33,-p+step*33],zeros(4),ones(4)) for j in 25:54]
    labels,big=PartitionLabels()(boxes)
    @test isempty(big) && length(labels)>1
    @test sort(vcat([l[3] for l in labels]...)) == collect(eachindex(boxes))
    for (c,r,mem) in labels
        @test certified_box_capacity(r)
        @test all(i -> label_contains(c,r,boxes[i][1],boxes[i][2]),mem)
    end
    labels,big=PartitionLabels(0.3,1)(boxes)
    @test isempty(labels) && big==collect(eachindex(boxes))
end

println("PASS: capacity theorem controls, 256-bit vertices/interior samples, exact Fourier-ray controls, independent natural interval check")
