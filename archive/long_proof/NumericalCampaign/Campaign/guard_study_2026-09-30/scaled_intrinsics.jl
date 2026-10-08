# STUDY ONLY: rescaled inv and sqrt for FastTM (the same guarded primitives; every intermediate stays O(1/|c0|)).
#   1/(c0+h)     = (1/c0) · Σ_{k≤Q} (-u)^k + tail,           u = h/c0, |u| ≤ x < 1, |tail| ≤ x^(Q+1)/(1-x)
#   sqrt(c0+h)   = sqrt(c0) · Σ_{k≤Q} b_k u^k + tail,       |tail| ≤ |b_{Q+1}| x^(Q+1)/(1-x)  (c0 > 0)
Core.eval(FastTM, quote
    function Base.inv(a::TM{Q}) where Q
        X = interval(a.c[1]); ac = abs(X); H = interval(hbound(a))
        sup(H / ac) < 1 || error("inv: model range reaches 0 (H/|c0| = $(sup(H / ac)))")
        R = interval(1.0) / X
        h = TM{Q}(copy(a.c), a.r); h.c[1] = 0.0
        v = R * h + 1.0                                  # 1 + u, centre exactly 1
        x = interval(hbound(v)); sup(x) < 1 || error("inv: scaled range reaches 0")
        fk = [interval(Float64((-1)^k)) for k in 0:Q]
        R * series(v, fk, sup(x^(Q + 1) / (interval(1.0) - x)))
    end
    function Base.sqrt(a::TM{Q}) where Q
        X = interval(a.c[1]); H = interval(hbound(a))
        inf(X) > 0 || error("sqrt: centre not positive")
        sup(H / X) < 1 || error("sqrt: model range reaches 0 (H/c0 = $(sup(H / X)))")
        h = TM{Q}(copy(a.c), a.r); h.c[1] = 0.0
        v = (interval(1.0) / X) * h + 1.0
        x = interval(hbound(v)); sup(x) < 1 || error("sqrt: scaled range reaches 0")
        bin = [interval(1.0)]
        for k in 1:Q + 1; push!(bin, bin[end] * (interval(0.5) - interval(k - 1)) / interval(k)); end
        sqrt(X) * series(v, bin[1:Q + 1], sup(abs(bin[Q + 2]) * x^(Q + 1) / (interval(1.0) - x)))
    end
end)
