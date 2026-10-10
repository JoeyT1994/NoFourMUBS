#!/usr/bin/env python3
"""Generate the double-boundary certificates. Generation only: imports SymPy.

The acceptance checker never imports this file or SymPy. Every Gröbner or
Euclidean computation here is exported as an explicit polynomial identity.
"""

from pathlib import Path
import json
import sympy as S


ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "certificates"
OUT.mkdir(parents=True, exist_ok=True)


def ast(expr):
    expr = S.sympify(expr)
    if expr.is_Rational:
        return str(expr)
    if expr.is_Symbol:
        return str(expr)
    if expr.is_Add:
        return ["add", *map(ast, expr.args)]
    if expr.is_Mul:
        return ["mul", *map(ast, expr.args)]
    if expr.is_Pow and expr.exp.is_Integer and expr.exp >= 0:
        return ["pow", ast(expr.base), str(expr.exp)]
    raise ValueError("Not a polynomial expression: " + str(expr))


def bundle(variables, title):
    return dict(kind="polynomial_bundle", title=title,
                variables=list(map(str, variables)), definitions={},
                identities=[], derivatives=[], substitutions=[],
                evaluations=[], positivity=[])


def define(B, name, expression):
    B["definitions"][name] = ast(expression)
    return S.Symbol(name)


def identity(B, name, lhs, rhs):
    B["identities"].append(dict(name=name, lhs=ast(lhs), rhs=ast(rhs)))


def derivative(B, name, source, variable, result, order=1):
    B["derivatives"].append(dict(name=name, of=ast(source),
                                variable=str(variable), order=str(order),
                                equals=ast(result)))


def substitute(B, name, source, replacements, result):
    B["substitutions"].append(dict(name=name, source=ast(source),
                                  replacements={str(k): ast(v) for k, v in replacements.items()},
                                  result=ast(result)))


def evaluate(B, name, source, at, value):
    B["evaluations"].append(dict(name=name, polynomial=ast(source),
                                at={str(k): str(v) for k, v in at.items()},
                                equals=str(value)))


def save(B, filename):
    (OUT / filename).write_text(json.dumps(B, indent=2) + "\n")


c, h = S.symbols("c h")
u = 16*c**4 + 4 + 16*c*(2*c*c-1)*h
v = 16*(1-c*c)*(1+c*c-2*c*h)
w = -64*(1-c*c)*((4*c-2*c**3)*h - (2*c*c+1)
                        + (2*c**4-c*c)*(2*h*h-1))
L = 2*c*c + 1
M = 8*c**4 + 4*c**3*h - 4*c*c + 1
N = 16*c**4 + 16*c**3*h + 4*c*c*h*h - 4*c*c - 4*c*h - 1
R = -256*L*L*M*M*N
P = (1024*c**9 + 1408*c**8*h + 640*c**7*h*h - 224*c**7
     + 96*c**6*h**3 - 144*c**6*h + 56*c**5*h*h - 112*c**5
     + 32*c**4*h**3 - 108*c**4*h - 40*c**3*h*h + 28*c**3
     + 16*c*c*h + 2*c*h*h - h)
Q = (64*c**6 + 64*c**5*h + 16*c**4*h*h - 32*c**4
     - 20*c**3*h + 6*c*c + 2*c*h - 1)


def add_core(B):
    names = {}
    for name, value in [("u", u), ("v", v), ("w", w), ("L", L),
                        ("M", M), ("N", N), ("P", P), ("Q", Q)]:
        names[name] = define(B, name, value)
    U, V, W = names["u"], names["v"], names["w"]
    LL, MM, NN = names["L"], names["M"], names["N"]
    names["g"] = define(B, "g", 2*V - 3*U)
    names["eta"] = define(B, "eta", V - 2*U)
    names["chi"] = define(B, "chi", (3*U-V)*(V-U+12)/2-W)
    names["R"] = define(B, "R", -256*LL**2*MM**2*NN)
    return names


def trace_certificate():
    z, zi, s2 = S.symbols("z zi s2")
    B = bundle((c, h, z, zi, s2), "Double-boundary trace expansion")
    A = 4*c*z + 2*(2*c*c-1)*zi**2
    Ab = 4*c*zi + 2*(2*c*c-1)*z**2
    D, Db = z-c*zi**2, zi-c*z**2
    eqh, eqs, equ = 2*h-z**3-zi**3, s2+c*c-1, z*zi-1
    for name, value in [("A", A), ("Abar", Ab), ("D", D), ("Dbar", Db),
                        ("trace_h_constraint", eqh), ("sine_constraint", eqs),
                        ("unit_constraint", equ), ("u", u), ("v", v), ("w", w)]:
        define(B, name, value)
    direct = [A*Ab, 16*s2*D*Db, -16*s2*(A*D**2+Ab*Db**2)]
    for name, source, target in zip(("u", "v", "w"), direct, (u, v, w)):
        residual = S.expand(source-target)
        qh, residual = S.div(residual, eqh, h)
        qs, residual = S.div(residual, eqs, s2)
        qu, residual = S.div(S.expand(residual), equ, z, zi, c)
        assert residual == 0
        qhn, qsn, qun = [define(B, name+suffix, S.expand(p)) for suffix, p in
                         [("_h_cofactor", qh), ("_sine_cofactor", qs), ("_unit_cofactor", qu)]]
        src = define(B, name+"_direct", source)
        identity(B, name+"_trace_membership", src-S.Symbol(name),
                 qhn*S.Symbol("trace_h_constraint")
                 + qsn*S.Symbol("sine_constraint")
                 + qun*S.Symbol("unit_constraint"))
    save(B, "boundary_trace.json")


def normalized_relation_cofactors(f, relation):
    """Euclid in (QQ[c]/f)[h], then lift the remainder to a third cofactor."""
    def red(expr):
        return S.rem(S.expand(expr), f, c)

    def divide(A, B):
        quotient, remainder = S.Integer(0), red(A)
        bp = S.Poly(B, h)
        inv = S.invert(bp.LC(), f, c)
        while remainder != 0 and S.degree(remainder, h) >= bp.degree():
            rp = S.Poly(remainder, h)
            term = red(rp.LC()*inv)*h**(rp.degree()-bp.degree())
            quotient = red(quotient+term)
            remainder = red(remainder-term*B)
        return quotient, remainder

    a, b = red(P), red(Q)
    ap, aq, bp, bq = map(S.Integer, (1, 0, 0, 1))
    while b != 0:
        quotient, remainder = divide(a, b)
        a, b = b, remainder
        ap, bp = bp, red(ap-quotient*bp)
        aq, bq = bq, red(aq-quotient*bq)
    inv = S.invert(S.Poly(a, h).LC(), f, c)
    a, ap, aq = red(a*inv), red(ap*inv), red(aq*inv)
    assert S.expand(a-relation) == 0
    af = S.cancel((relation-ap*P-aq*Q)/f)
    assert af.is_polynomial(c, h)
    denominator = S.ilcm(*[v.q for p in (ap, aq, af) for v in S.Poly(p, c, h).coeffs()])
    return denominator, *[S.expand(denominator*p) for p in (ap, aq, af)]


def core_certificate():
    B = bundle((c, h), "Double-boundary factorization, stationarity and eliminant")
    d = add_core(B)
    RR, LL, MM, NN, PP, QQ = [d[n] for n in ("R", "L", "M", "N", "P", "Q")]
    identity(B, "structural_R_factorization", RR, 4*d["g"]**2*d["eta"]-d["chi"]**2)
    identity(B, "eta_short_form", d["eta"], -8*(6*c**4+4*c**3*h-1))
    substitute(B, "simultaneous_sign_symmetry", RR, {c: -c, h: -h}, RR)
    for sign, label in [(S.Integer(1), "plus"), (S.Integer(-1), "minus")]:
        substitute(B, "vertical_edge_v_"+label, d["v"], {c: sign}, 0)
        substitute(B, "vertical_edge_eta_"+label, d["eta"], {c: sign}, -8*(5+4*sign*h))
    dRc = define(B, "dRc", -1024*LL*MM*PP)
    dRh = define(B, "dRh", -1024*c*LL**2*MM*QQ)
    derivative(B, "differentiate_R_c", RR, c, dRc)
    derivative(B, "differentiate_R_h", RR, h, dRh)
    substitute(B, "c_zero_R", RR, {c: 0}, 256)
    substitute(B, "c_zero_dRc", dRc, {c: 0}, 1024*h)
    H = S.hessian(R, (c, h))
    for name, i, j, source, variable in [("Hcc", 0, 0, dRc, c),
                                        ("Hch", 0, 1, dRc, h),
                                        ("Hhh", 1, 1, dRh, h)]:
        hn = define(B, name, S.expand(H[i, j]))
        derivative(B, "differentiate_"+name, source, variable, hn)
        evaluate(B, name+"_at_origin", hn, {c: 0, h: 0}, H[i, j].subs({c: 0, h: 0}))
    evaluate(B, "positive_diagonal_curvature_at_origin",
             S.Symbol("Hcc")+2*S.Symbol("Hch")+S.Symbol("Hhh"), {c: 0, h: 0}, 2048)

    fm = 6*c*c-4*c+1
    fp = 6*c*c+4*c+1
    identity(B, "quadratic_minus_positive_square", 3*fm, 2*(3*c-1)**2+1)
    identity(B, "quadratic_plus_positive_square", 3*fp, 2*(3*c+1)**2+1)

    eliminant = 2*c*(4*c*c-1)*(2*c*c-1)*L**2*fm*fp*(16*c**4-4*c*c-1)
    a, b, gcd = S.gcdex(P, Q, h)
    assert gcd == 1
    ac, bc = S.cancel(a*eliminant), S.cancel(b*eliminant)
    assert ac.is_polynomial(c, h) and bc.is_polynomial(c, h)
    an = define(B, "eliminant_P_cofactor", S.expand(ac))
    bn = define(B, "eliminant_Q_cofactor", S.expand(bc))
    en = define(B, "normalized_eliminant", eliminant)
    identity(B, "normalized_eliminant_Bezout", en, an*PP+bn*QQ)
    res = define(B, "reference_resultant", 128*c**7*en)
    identity(B, "reference_resultant_Bezout", res, (128*c**7*an)*PP+(128*c**7*bn)*QQ)

    branch_data = [("half", 4*c*c-1, h+2*c),
                   ("sqrt_half", 2*c*c-1, h+c),
                   ("golden", 16*c**4-4*c*c-1, h-4*c**3+3*c)]
    for name, f, rel in branch_data:
        fn = define(B, name+"_factor", f)
        rn = define(B, name+"_relation", rel)
        scale, ap, aq, af = normalized_relation_cofactors(f, rel)
        pnames = [define(B, name+"_"+n+"_cofactor", p)
                  for n, p in [("P", ap), ("Q", aq), ("factor", af)]]
        identity(B, name+"_relation_membership", scale*rn,
                 pnames[0]*PP+pnames[1]*QQ+pnames[2]*fn)

    fh, rh = S.Symbol("half_factor"), S.Symbol("half_relation")
    fs, rs = S.Symbol("sqrt_half_factor"), S.Symbol("sqrt_half_relation")
    identity(B, "half_N_membership", NN, fh+4*c*rh*(c*h+2*c*c-1))
    identity(B, "sqrt_half_N_membership", NN, fs*(LL+4*c*rs)+4*c*c*rs**2)

    f, hc = branch_data[-1][1], 4*c**3-3*c
    fg = S.Symbol("golden_factor")
    Rhc = define(B, "golden_R_restriction", R.subs(h, hc))
    substitute(B, "golden_R_substitution", RR, {h: hc}, Rhc)
    rval = 450-1100*c*c
    quotient, remainder = S.div(S.expand(R.subs(h, hc)-rval), f, c)
    assert remainder == 0
    rcofactor = define(B, "golden_R_factor_cofactor", quotient)
    identity(B, "golden_R_value_membership", Rhc, rval+fg*rcofactor)
    for name, expected, i, j in [("Hcc", 6480-23040*c*c, 0, 0),
                                 ("Hch", 2240*c*c-480, 0, 1),
                                 ("Hhh", 80-2240*c*c, 1, 1)]:
        actual = S.expand(H[i, j].subs(h, hc))
        quotient, remainder = S.div(actual-expected, f, c)
        assert remainder == 0
        restricted = define(B, "golden_"+name+"_restriction", actual)
        quotient_name = define(B, "golden_"+name+"_cofactor", quotient)
        substitute(B, "golden_"+name+"_substitution", S.Symbol(name), {h: hc}, restricted)
        identity(B, "golden_"+name+"_reduction", restricted, expected+fg*quotient_name)
    det_restricted = (6480-23040*c*c)*(80-2240*c*c)-(2240*c*c-480)**2
    expected_det = 3200000-2560000*c*c
    quotient, remainder = S.div(S.expand(det_restricted-expected_det), f, c)
    assert remainder == 0
    identity(B, "golden_restricted_Hessian_determinant", det_restricted,
             expected_det+fg*quotient)
    save(B, "boundary_core.json")


def curvature_certificate():
    x, z, b2, y, q = S.symbols("x z b2 y q")
    B = bundle((x, z, b2, y, q, c), "Actual transverse splitting of the nonmaximal critical branch")
    uu = (x+z)**2+b2
    vv = (x-z)**2+b2
    ww = 2*((x+z)*(x-z)**2-b2*(3*x-z))
    cc = (3*uu-vv)*(vv-uu+12)/2-ww
    ambient = 4*(2*vv-3*uu)**2*(vv-2*uu)-cc**2
    ar = define(B, "ambient_R", ambient)
    cusp = -4*(b2+2*x*x+24*x+18)*(b2+5*x*x+18*x+9)**2
    cr = define(B, "cusp_R", cusp)
    substitute(B, "ambient_cusp_factorization", ar, {z: 3}, cr)
    split_x = 2*y*q+2*y*y-1
    split_b2 = 4*(1-y*y)*(q-y)**2
    split = (-256*(q*q*y*y+q*q+6*q*y**3+8*q*y+y**4+11*y*y-1)
                  *(4*q*q*y*y+q*q+12*q*y**3+2*q*y+4*y**4+5*y*y-1)**2)
    sr = define(B, "split_R", split)
    substitute(B, "split_substitution", cr, {x: split_x, b2: split_b2}, sr)
    split_derivative = S.expand(S.diff(split, q))
    dq = define(B, "split_q_derivative", split_derivative)
    derivative(B, "differentiate_splitting_parameter", sr, q, dq)
    curv = 1536*y*y*(y+2)**2*(2*y+1)**2*(8*y**5+24*y**4+35*y**3+21*y*y+8*y+3)
    cv = define(B, "transverse_curvature", curv)
    substitute(B, "curvature_at_q_one", -dq, {q: 1}, cv)
    fy = 4*y*y+6*y+1
    yf = define(B, "y_minimal_polynomial", fy)
    reduced = 660*(46*y+9)
    quotient, remainder = S.div(S.expand(curv-reduced), fy, y)
    assert remainder == 0
    quotient_name = define(B, "curvature_factor_cofactor", quotient)
    identity(B, "transverse_curvature_reduction", cv, reduced+yf*quotient_name)
    substitute(B, "branch_to_y_minimal_polynomial", yf, {y: 2*c*c-1}, 16*c**4-4*c*c-1)
    evaluate(B, "curvature_linear_factor_lower_endpoint", 46*y+9,
             {x: 0, z: 0, b2: 0, y: S.Rational(-49, 256), q: 0, c: 0}, S.Rational(25, 128))
    evaluate(B, "curvature_positive_lower_bound", reduced,
             {x: 0, z: 0, b2: 0, y: S.Rational(-49, 256), q: 0, c: 0}, S.Rational(4125, 32))
    save(B, "boundary_curvature.json")


def bernstein(B, name, polynomial, variable, lower, upper):
    n = S.degree(polynomial, variable)
    transformed = S.Poly(polynomial.subs(variable, lower+(upper-lower)*variable), variable)
    coefficients = [sum(transformed.nth(k)*S.binomial(i, k)/S.binomial(n, k)
                        for k in range(i+1)) for i in range(n+1)]
    minimum = min(coefficients)
    assert minimum > 0
    B["positivity"].append(dict(name=name, polynomial=ast(polynomial), variable=str(variable),
                               lower=str(lower), upper=str(upper),
                               coefficients=list(map(str, coefficients)), lower_bound=str(minimum)))


def edges_certificate():
    B = bundle((c, h), "Boundary-edge factorization and rational Bernstein positivity")
    rr = define(B, "R", R)
    ll = define(B, "L", L)
    tt = define(B, "T", 4*c**3-2*c+1)
    ff = define(B, "F", 32*c**5+4*c**4-4*c**3+4*c*c-4*c+1)
    T, F = 4*c**3-2*c+1, 32*c**5+4*c**4-4*c**3+4*c*c-4*c+1
    edge = -256*(4*c*c-1)*(2*c+1)**4*ll**2*tt**2
    er = define(B, "edge_R", edge)
    substitute(B, "positive_horizontal_edge", rr, {h: 1}, er)
    identity(B, "reference_edge_factorization", er,
             -256*(2*c-1)*(2*c+1)**5*ll**2*tt**2)
    edge_derivative = -1024*(2*c+1)**4*(4*c-1)*ll*tt*ff
    ed = define(B, "edge_R_derivative", edge_derivative)
    derivative(B, "differentiate_horizontal_edge", er, c, ed)
    substitute(B, "negative_edge_symmetry", rr, {c: -c, h: -h}, rr)
    evaluate(B, "surviving_positive_value", rr, {c: S.Rational(1, 4), h: 1}, S.Rational(1594323, 4096))
    for name, p, lo, hi in [("T_positive_full_edge", T, S.Rational(-1, 2), S.Rational(1, 2)),
                             ("F_positive_left", F, S.Rational(-1, 2), S.Integer(0)),
                             ("F_positive_middle", F, S.Integer(0), S.Rational(1, 4)),
                             ("F_positive_right", F, S.Rational(1, 4), S.Rational(1, 2))]:
        bernstein(B, name, p, c, lo, hi)
    B["interval_covers"] = [
        dict(name="T_positivity_covers_full_edge", lower="-1/2", upper="1/2",
             positivity_names=["T_positive_full_edge"]),
        dict(name="F_positivity_covers_full_edge", lower="-1/2", upper="1/2",
             positivity_names=["F_positive_left", "F_positive_middle", "F_positive_right"]),
    ]
    save(B, "boundary_edges.json")


if __name__ == "__main__":
    trace_certificate()
    core_certificate()
    curvature_certificate()
    edges_certificate()
    print("Wrote boundary_trace/core/curvature/edges.json")
