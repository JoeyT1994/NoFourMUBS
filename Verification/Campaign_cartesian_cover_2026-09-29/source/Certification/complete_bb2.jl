# Fold exclusion over a seed cell (completeness of the physical rays).
# S = {(phi, theta) : F(phi; theta) = 0, theta in cell}.  If every point of S has rank J = 5, then
# S -> cell is a covering map (T^5 compact), so the number of physical rays is constant on the cell
# (and on any connected union of such cells): completeness follows from one rigorous count.
# Branch and bound on T^5 with interval seed coefficients over the whole cell:
#   drop B if F(B; cell) excludes 0 (natural or mean-value form);
#   keep B as a REGULAR leaf if the 5x5 interval Jacobian (best rows) is regular on B x cell;
#   otherwise bisect; boxes below wmin are UNRESOLVED (possible fold) -> refine the cell.
include("tm_krawczyk.jl")
function regular5(JB)
    Jm = mid.(JB); rows = choose_rows(Jm)
    Y = try inv(Jm[rows, :]) catch; return false end
    Mi = [ (i == j ? 1.0 : 0.0) - sum(Y[i, k] * JB[rows[k], j] for k in 1:5) for i in 1:5, j in 1:5]
    maximum(sum(mag(Mi[i, j]) for j in 1:5) for i in 1:5) < 1          # ||I - Y J||_inf < 1
end
function classify(B, Civ)
    F = ray_eqs_gen(B, Civ)
    any(!in_interval(0.0, f) for f in F) && return :out
    JB = ray_jac_gen(B, Civ)
    c = [interval(mid(b)) for b in B]; Fc = ray_eqs_gen(c, Civ)
    Fm = [Fc[i] + sum(JB[i, j] * (B[j] - c[j]) for j in 1:5) for i in 1:9]
    any(!in_interval(0.0, f) for f in Fm) && return :out
    regular5(JB) && return :regular
    :split
end
function fold_bb(Civ; n0 = 6, wmin = 1e-3)
    h = 2pi / n0
    stack = vec([[interval(-pi + h*i[k], -pi + h*(i[k] + 1)) for k in 1:5] for i in Iterators.product(ntuple(_ -> 0:n0-1, 5)...)])
    reg = Vector{Vector{Interval{Float64}}}(); unres = similar(reg); nt = 0
    while !isempty(stack)
        B = pop!(stack); nt += 1
        c = classify(B, Civ)
        c == :out && continue
        if c == :regular; push!(reg, B); continue; end
        k = argmax(diam.(B))
        if diam(B[k]) < wmin; push!(unres, B); continue; end
        m = mid(B[k]); B1 = copy(B); B2 = copy(B)
        B1[k] = interval(inf(B[k]), m); B2[k] = interval(m, sup(B[k])); push!(stack, B1, B2)
    end
    reg, unres, nt
end
function nclusters(boxes)
    n = length(boxes); used = falses(n); cl = 0
    touch(a, b) = all(inf(a[k]) <= sup(b[k]) + 1e-12 && inf(b[k]) <= sup(a[k]) + 1e-12 for k in 1:5)
    for i in 1:n
        used[i] && continue; cl += 1; used[i] = true; fr = [i]
        while !isempty(fr); a = pop!(fr); for j in 1:n; if !used[j] && touch(boxes[a], boxes[j]); used[j] = true; push!(fr, j); end; end; end
    end
    cl
end
th0 = [2.692, -1.5, -0.614, 1.884]
for rho in (1e-6, 5e-3, 1e-2)
    cell = tm_cell_mixed(th0, rho)
    t = @elapsed (reg, unres, nt) = fold_bb(cell.Civ)
    println("rho $rho: $nt boxes, $(length(reg)) regular leaves in $(nclusters(reg)) clusters, $(length(unres)) unresolved, $(round(t, digits=1)) s"); flush(stdout)
end
