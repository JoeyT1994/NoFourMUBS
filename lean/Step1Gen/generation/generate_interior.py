#!/usr/bin/env python3
"""Generate exact, root-free certificates for the deltoid interior reduction.

SymPy is a generation dependency only.  Acceptance uses the separate checker
in ../verify_certificates.py, which imports no computer algebra system.
All numerical JSON data are decimal integer or Fraction strings.
"""

import json
from pathlib import Path

import sympy as sp


OUT = Path(__file__).resolve().parents[1] / "certificates"


def expr_json(expr):
    expr = sp.sympify(expr)
    if expr.is_Rational:
        return str(expr)
    if expr.is_Symbol:
        return str(expr)
    if expr.is_Add:
        return ["add", *(expr_json(arg) for arg in expr.args)]
    if expr.is_Mul:
        return ["mul", *(expr_json(arg) for arg in expr.args)]
    if expr.is_Pow and expr.exp.is_Integer and expr.exp >= 0:
        return ["pow", expr_json(expr.base), str(expr.exp)]
    raise ValueError("not a rational polynomial expression: " + str(expr))


class Bundle:
    def __init__(self, name, variables, purpose):
        self.name = name
        self.vars = dict(zip(variables, sp.symbols(" ".join(variables))))
        self.full = {}
        self.data = {
            "kind": "polynomial_bundle",
            "name": name,
            "purpose": purpose,
            "variables": variables,
            "definitions": {},
            "identities": [],
            "derivatives": [],
            "substitutions": [],
        }

    def expand(self, expr):
        return sp.expand(sp.sympify(expr).xreplace(self.full))

    def define(self, name, expr):
        if name in self.vars or name in self.data["definitions"]:
            raise ValueError("duplicate symbol " + name)
        symbol = sp.Symbol(name)
        self.data["definitions"][name] = expr_json(expr)
        self.full[symbol] = self.expand(expr)
        return symbol

    def identity(self, name, lhs, rhs):
        if self.expand(lhs - rhs) != 0:
            raise AssertionError(name)
        self.data["identities"].append(
            {"name": name, "lhs": expr_json(lhs), "rhs": expr_json(rhs)}
        )

    def derivative(self, name, source, variable, result, order=1):
        if sp.expand(sp.diff(self.expand(source), variable, order) - self.expand(result)) != 0:
            raise AssertionError(name)
        self.data["derivatives"].append(
            {"name": name, "of": expr_json(source), "variable": str(variable),
             "order": str(order), "equals": expr_json(result)}
        )

    def substitution(self, name, source, replacements, result):
        actual = self.expand(source).subs(
            {key: self.expand(value) for key, value in replacements.items()}, simultaneous=True
        )
        if sp.expand(actual - self.expand(result)) != 0:
            raise AssertionError(name)
        self.data["substitutions"].append(
            {"name": name, "source": expr_json(source),
             "replacements": {str(key): expr_json(value) for key, value in replacements.items()},
             "result": expr_json(result)}
        )

    def unit_cofactor(self, name, lhs, rhs, constraint, first_variable):
        """Store an explicit cofactor for an identity modulo one circle."""
        difference = self.expand(lhs - rhs)
        variables = [first_variable] + [v for v in self.vars.values() if v != first_variable]
        quotient, remainder = sp.div(
            sp.Poly(difference, *variables), sp.Poly(self.expand(constraint), *variables)
        )
        if remainder.as_expr() != 0:
            raise AssertionError(name + " is not divisible by circle constraint")
        cofactor = self.define(name + "_cofactor", quotient.as_expr())
        self.identity(name, lhs, rhs + constraint * cofactor)

    def save(self):
        OUT.mkdir(parents=True, exist_ok=True)
        for key in ("derivatives", "substitutions"):
            if not self.data[key]:
                self.data.pop(key)
        self.data["generation_statistics"] = {
            "largest_definition_degree": str(max(
                sp.Poly(value, *self.vars.values()).total_degree() for value in self.full.values()
            )),
            "largest_definition_terms": str(max(
                len(sp.Poly(value, *self.vars.values()).terms()) for value in self.full.values()
            )),
            "uses_root_isolation": "no",
            "uses_resultants": "no",
            "uses_groebner_bases": "no",
        }
        path = OUT / (self.name + ".json")
        path.write_text(json.dumps(self.data, indent=2) + "\n")
        print(path.name, path.stat().st_size, "bytes")


def generate_core():
    b = Bundle(
        "interior_core", ["x", "y", "v", "h", "d"],
        "Root-free exclusion of every positive unconstrained local maximum; "
        "Cartesian reduction, a positive-coefficient derivative combination, and transverse curvature.",
    )
    x, y, v, h, d = b.vars.values()
    u = b.define("u", x*x + y*y)
    g = b.define("g", 2*v - 3*u)
    eta = b.define("eta", v - 2*u)
    C = b.define("C", (3*u-v)*(v-u+12)/2 - 2*v*x)
    H = b.define("H", 4*g*g*eta - C*C)
    K = b.define("K", 2*v - 3*u + 18)
    Cx = b.define("Cx", 2*x*K - 2*v)
    Cy = b.define("Cy", 2*y*K)
    Cv = b.define("Cv", -v + 2*u - 2*x - 6)
    Hx = b.define("Hx", -16*x*g*(5*v-9*u) - 2*C*Cx)
    Hy = b.define("Hy", -16*y*g*(5*v-9*u) - 2*C*Cy)
    Hv = b.define("Hv", 4*g*(6*v-11*u) - 2*C*Cv)
    Hyy = b.define("Hyy", sp.diff(b.expand(Hy), y))
    for name, source, variable, result in [
        ("differentiate_C_x", C, x, Cx),
        ("differentiate_C_y", C, y, Cy),
        ("differentiate_C_v", C, v, Cv),
        ("differentiate_H_x", H, x, Hx),
        ("differentiate_H_y", H, y, Hy),
        ("differentiate_H_v", H, v, Hv),
        ("differentiate_H_yy", Hy, y, Hyy),
    ]:
        b.derivative(name, source, variable, result)
    b.identity("positive_value_forces_g_positive", g, u+2*eta)
    b.identity("positive_amplitude_factor", 6*v-11*u, u+6*eta)
    b.identity("cartesian_phase_stationarity", y*Hx-x*Hy, 4*v*y*C)

    shiftC = b.define("shiftC", b.expand(C).subs(v, 2*(x*x+y*y)+d))
    shiftHv = b.define("shiftHv", 4*(u+2*d)*(u+6*d) + 2*shiftC*(d+2*x+6))
    b.substitution("shift_C_by_eta", C, {v: 2*u+d}, shiftC)
    b.substitution("C_zero_excludes_stationarity", Hv, {v: 2*u+d}, shiftHv)

    g0 = b.define("g0", 2*v-3*x*x)
    c = b.define("c", (3*x*x-v)*(v-x*x+12)/2-2*v*x)
    f = b.define("f", 4*g0*g0*(v-2*x*x)-c*c)
    cx = b.define("cx", 2*x*(2*v-3*x*x+18)-2*v)
    cv = b.define("cv", -v+2*x*x-2*x-6)
    fx = b.define("fx", -16*x*g0*(5*v-9*x*x)-2*c*cx)
    fv = b.define("fv", 4*g0*(6*v-11*x*x)-2*c*cv)
    fyy = b.define("fyy", -16*g0*(5*v-9*x*x)-4*c*(2*v-3*x*x+18))
    for source, result in [(C,c),(H,f),(Cx,cx),(Cv,cv),(Hx,fx),(Hv,fv),(Hyy,fyy)]:
        b.substitution("specialize_y_zero_"+str(source), source, {y: 0}, result)
    b.identity("cartesian_transverse_curvature", x*fyy, fx-4*v*c)
    b.identity("phase_second_derivative", x*x*fyy-x*fx, -4*v*x*c)
    b.substitution("A_zero_is_nonstationary", fx, {x: 0}, -2*v*v*(v+12))

    ng = b.define("negative_g", h*h+2*d)
    nc = b.define("negative_c", (h*h-d)*(h*h+d+12)/2 + 2*h*(2*h*h+d))
    ncx = b.define("negative_cx", -2*(h**3+2*h*h+18*h+(2*h+1)*d))
    ncv = b.define("negative_cv", -d+2*h-6)
    nfx = b.define("negative_fx", 16*h*ng*(h*h+5*d)-2*nc*ncx)
    nfv = b.define("negative_fv", 4*ng*(h*h+6*d)-2*nc*ncv)
    W = b.define(
        "nonnegative_sum",
        (2*h+6)*d*d+(6*h**3+33*h*h+48*h)*d+h**5+6*h**4+6*h**3,
    )
    W_remainder = b.define(
        "nonnegative_remainder", 2*h*d*d+(6*h**3+33*h*h+48*h)*d+h**5+6*h**4+6*h**3,
    )
    b.identity("strict_positive_term_in_sum", W, 6*d*d+W_remainder)
    replacements = {x: -h, v: 2*h*h+d}
    for source, result in [(g0,ng),(c,nc),(cx,ncx),(cv,ncv),(fx,nfx),(fv,nfv)]:
        b.substitution("negative_chart_"+str(source), source, replacements, result)
    b.identity("negative_x_derivative_obstruction", ncx*nfv-ncv*nfx, -8*ng*W)

    T = b.define(
        "derivative_combination_half",
        (2*x-6)*d*d+(6*x**3-33*x*x+48*x)*d+x**5-6*x**4+6*x**3,
    )
    combo = b.define("derivative_combination", cx*fv-cv*fx)
    b.substitution("general_derivative_combination", combo, {v: 2*x*x+d}, 8*(x*x+2*d)*T)
    b.substitution("signed_combination_half", T, {x: -h}, -W)
    positiveC = b.define("positive_c", (x*x-d)*(x*x+d+12)/2 - 2*x*(2*x*x+d))
    b.substitution("positive_chart_C", c, {v: 2*x*x+d}, positiveC)
    b.substitution("positive_chart_Cv", cv, {v: 2*x*x+d}, -d-2*x-6)
    b.substitution(
        "positive_chart_fv", fv, {v: 2*x*x+d},
        4*(x*x+2*d)*(x*x+6*d)+2*positiveC*(d+2*x+6),
    )
    b.data["positivity_reading"] = {
        "negative_chart_hypotheses": ["h >= 0", "d > 0"],
        "strict_positive_definition": "nonnegative_sum",
        "strict_positive_term": ["mul", "6", ["pow", "d", "2"]],
        "remaining_terms": "nonnegative_remainder",
        "conclusion": "At fx=fv=0 and v>2*x^2 one must have x>0; "
        "then c<0 and cartesian_transverse_curvature contradicts a negative-semidefinite Hessian.",
    }
    b.data["orthant_nonnegative"] = [
        {"name":"remainder_nonnegative_on_h_d_orthant", "polynomial":expr_json(W_remainder), "variables":["h","d"]},
        {"name":"negative_g_nonnegative_on_h_d_orthant", "polynomial":expr_json(ng), "variables":["h","d"]},
        {"name":"positive_g_factor_on_x_d_orthant", "polynomial":expr_json(x*x+2*d), "variables":["x","d"]},
        {"name":"positive_gradient_factor_on_x_d_orthant", "polynomial":expr_json(x*x+6*d), "variables":["x","d"]},
        {"name":"positive_C_coefficient_on_x_d_orthant", "polynomial":expr_json(d+2*x+6), "variables":["x","d"]},
    ]
    b.save()


def generate_boundary():
    b = Bundle(
        "interior_boundary", ["a", "b", "r", "X", "Y"],
        "Exact unit-circle ideal identities for regular deltoid boundaries and inward invariant-orbit curvature.",
    )
    a, bb, r, X, Y = b.vars.values()
    n = b.define("norm_z", a*a+bb*bb)
    S = b.define("circle", n-1)
    zr = b.define("z3_real", a**3-3*a*bb*bb)
    zi = b.define("z3_imag", 3*a*a*bb-bb**3)
    Q = b.define("cusp_distance", 2-2*zr)
    Nx = b.define("normal_x", a-a*a+bb*bb)
    Ny = b.define("normal_y", bb+2*a*bb)
    Tx = b.define("tangent_x", -2*Ny)
    Ty = b.define("tangent_y", 2*Nx)
    Ux = b.define("U_x", 2*a+a*a-bb*bb)
    Uy = b.define("U_y", 2*bb-2*a*bb)
    Vx = b.define("V_x", r*a-(r+1)*(a*a-bb*bb))
    Vy = b.define("V_y", r*bb+2*(r+1)*a*bb)
    Upx = b.define("orbit_U_x_first", (Uy+3*Vy)/2)
    Upy = b.define("orbit_U_y_first", -(Ux+3*Vx)/2)
    Uppx = b.define("orbit_U_x_second", -(5*Ux+3*Vx)/2)
    Uppy = b.define("orbit_U_y_second", -(5*Uy+3*Vy)/2)
    D = b.define("Delta", (X*X+Y*Y)**2+18*(X*X+Y*Y)-8*(X**3-3*X*Y*Y)-27)
    Dx = b.define("Delta_x", 4*X*(X*X+Y*Y)+36*X-24*X*X+24*Y*Y)
    Dy = b.define("Delta_y", 4*Y*(X*X+Y*Y)+36*Y+48*X*Y)
    Dxx = b.define("Delta_xx", 12*X*X+4*Y*Y+36-48*X)
    Dxy = b.define("Delta_xy", 8*X*Y+48*Y)
    Dyy = b.define("Delta_yy", 4*X*X+12*Y*Y+36+48*X)
    for name, source, variable, result in [
        ("differentiate_Delta_x",D,X,Dx), ("differentiate_Delta_y",D,Y,Dy),
        ("differentiate_Delta_xx",Dx,X,Dxx), ("differentiate_Delta_xy",Dx,Y,Dxy),
        ("differentiate_Delta_yy",Dy,Y,Dyy),
    ]:
        b.derivative(name,source,variable,result)
    atU = {}
    for source in [D,Dx,Dy,Dxx,Dxy,Dyy]:
        atU[source] = b.define(str(source)+"_at_U", b.expand(source).subs({X:b.expand(Ux),Y:b.expand(Uy)}, simultaneous=True))
        b.substitution("boundary_specialize_"+str(source),source,{X:Ux,Y:Uy},atU[source])
    b.identity("unit_cubic_norm", zr*zr+zi*zi, n**3)
    b.identity("cusp_distance_sum_of_squares", Q, (zr-1)**2+zi*zi-S*(n*n+n+1))
    b.identity("normal_norm", Nx*Nx+Ny*Ny, Q+S*(n+2))
    b.identity("boundary_tangent_norm", Tx*Tx+Ty*Ty, 4*Q+4*S*(n+2))
    b.identity("boundary_tangent_normal_orthogonality", Nx*Tx+Ny*Ty, 0)
    b.identity("deltoid_boundary_identity", atU[D], S*S*(n*n+8*zr+18*n-27))
    b.unit_cofactor("deltoid_gradient_x", atU[Dx], 8*Q*Nx, S, bb)
    b.unit_cofactor("deltoid_gradient_y", atU[Dy], 8*Q*Ny, S, bb)
    b.identity("tangency_parameter_x", Upx, -(3*r+2)*Tx/4)
    b.identity("tangency_parameter_y", Upy, -(3*r+2)*Ty/4)
    first = b.define("orbit_Delta_first", atU[Dx]*Upx+atU[Dy]*Upy)
    second = b.define(
        "orbit_Delta_second",
        atU[Dx]*Uppx+atU[Dy]*Uppy+atU[Dxx]*Upx*Upx+2*atU[Dxy]*Upx*Upy+atU[Dyy]*Upy*Upy,
    )
    b.identity("invariant_orbit_tangency", first, 6*(3*r+2)*zi*S*S)
    b.unit_cofactor("inward_curvature", second, -sp.Rational(9,2)*(r+2)**2*Q*Q, S, bb)
    opposite_x = b.define("opposite_U_x", -2*a+a*a-bb*bb)
    opposite_y = b.define("opposite_U_y", -2*bb-2*a*bb)
    b.substitution("zero_curvature_V_x", Vx, {r:-2}, opposite_x)
    b.substitution("zero_curvature_V_y", Vy, {r:-2}, opposite_y)
    opposite_D = b.define("Delta_at_opposite", S*S*(n*n-8*zr+18*n-27))
    b.substitution("opposite_is_boundary", D, {X:opposite_x,Y:opposite_y}, opposite_D)
    b.save()


def bernstein_coefficients(polynomial, variable, lower, upper):
    t = sp.Symbol("bernstein_t")
    p = sp.Poly(sp.expand(polynomial.subs(variable, lower+(upper-lower)*t)), t)
    degree = p.degree()
    return [sp.factor(sum(p.nth(k)*sp.binomial(j,k)/sp.binomial(degree,k) for k in range(j+1)))
            for j in range(degree+1)]


def generate_cusp():
    b = Bundle(
        "interior_cusp", ["x", "y", "t"],
        "Polynomial factorization and exact positive Bernstein coefficients excluding a cusp/interior local maximum.",
    )
    x, y, t = b.vars.values()
    u = b.define("u", (3+x)**2+y*y)
    v = b.define("v", (3-x)**2+y*y)
    q = b.define("q", 2*((3+x)*((3-x)**2-y*y)+2*y*y*(3-x)))
    g = b.define("g", 2*v-3*u)
    eta = b.define("eta", v-2*u)
    chi = b.define("chi", (3*u-v)*(v-u+12)/2-q)
    R = b.define("R", 4*g*g*eta-chi*chi)
    F = b.define("F", 2*x*x+24*x+y*y+18)
    G = b.define("G", 5*x*x+18*x+y*y+9)
    Rx = b.define("Rx", -4*G*((4*x+24)*(G+2*F)+12*(x-1)*F))
    Ry = b.define("Ry", -8*y*G*(G+2*F))
    b.identity("cusp_R_factorization", R, -4*F*G*G)
    b.derivative("cusp_x_derivative", R, x, Rx)
    b.derivative("cusp_y_derivative", R, y, Ry)
    b.substitution("cusp_nonreal_branch_contradiction", F, {x:1}, y*y+44)
    Delta = b.define("Delta", (x*x+y*y)**2+18*(x*x+y*y)-8*(x**3-3*x*y*y)-27)
    Dreal = b.define("Delta_real", (x-3)**3*(x+1))
    b.substitution("real_axis_deltoid_interval", Delta, {y:0}, Dreal)
    F0 = b.define("F_real", 2*x*x+24*x+18)
    b.substitution("cusp_real_F", F, {y:0}, F0)
    b.identity("positive_F_above_cutoff", F0, sp.Rational(2,25)+(x+sp.Rational(4,5))*(2*x+sp.Rational(112,5)))
    b.substitution("positive_coefficient_F_cutoff", F0, {x:t-sp.Rational(4,5)}, 2*t*t+sp.Rational(104,5)*t+sp.Rational(2,25))
    b.substitution("F_at_cutoff", F0, {x:-sp.Rational(4,5)}, sp.Rational(2,25))
    P3 = b.define("cusp_cubic", 5*x**3+62*x*x+141*x+72)
    P3derivative = b.define("cusp_cubic_derivative", 15*x*x+124*(x+1)+17)
    b.derivative("cusp_cubic_monotonicity", P3, x, P3derivative)
    b.substitution("cusp_cubic_at_cutoff", P3, {x:-sp.Rational(4,5)}, -sp.Rational(92,25))
    b.substitution("real_cusp_derivative_factorization", Rx, {y:0}, -48*(x+3)*(5*x+3)*P3)
    coeffs = bernstein_coefficients(-b.expand(P3),x,sp.Integer(-1),-sp.Rational(4,5))
    b.data["positivity"] = [{
        "name":"negative_cusp_cubic_on_admissible_interval",
        "polynomial":expr_json(-P3), "variable":"x", "lower":"-1", "upper":"-4/5",
        "coefficients":[str(c) for c in coeffs], "lower_bound":"92/25",
    }]
    b.data["orthant_nonnegative"] = [{
        "name":"cusp_cutoff_nonnegative_remainder", "polynomial":expr_json(2*t*t+sp.Rational(104,5)*t), "variables":["t"],
    }]
    b.save()


def generate_geometry():
    b = Bundle(
        "interior_geometry",
        ["ax","ay","bx","by","p","q","a","b","k","rr","ss","lam","z1","z2","z3","tx","ty"],
        "Unit-circle invariance and deltoid discriminant identities, with explicit ideal cofactors and no root-counting oracle.",
    )
    ax,ay,bx,by,p,q,a,bb,k,rr,ss,lam,z1,z2,z3,tx,ty = b.vars.values()
    circle_norm = b.define("circle_norm",p*p+q*q)
    circle = b.define("circle_constraint",circle_norm-1)
    u = b.define("initial_u",ax*ax+ay*ay)
    v = b.define("initial_v",bx*bx+by*by)
    moment = b.define("initial_moment",2*(ax*(bx*bx-by*by)-2*ay*bx*by))
    action_ax = b.define("action_ax",(p*p-q*q)*ax+2*p*q*ay)
    action_ay = b.define("action_ay",(p*p-q*q)*ay-2*p*q*ax)
    action_bx = b.define("action_bx",p*bx-q*by)
    action_by = b.define("action_by",q*bx+p*by)
    action_u = b.define("action_u",action_ax**2+action_ay**2)
    action_v = b.define("action_v",action_bx**2+action_by**2)
    action_moment = b.define("action_moment",2*(action_ax*(action_bx**2-action_by**2)-2*action_ay*action_bx*action_by))
    b.identity("circle_action_u",action_u-u,circle*(circle_norm+1)*u)
    b.identity("circle_action_v",action_v-v,circle*v)
    b.identity("circle_action_cubic_moment",action_moment-moment,circle*(circle_norm+1)*moment)
    b.substitution("positive_B_slice_moment",moment,{bx:sp.Symbol("bx"),by:0},2*ax*bx*bx)

    e1 = b.define("elementary_one",z1+z2+z3)
    e2 = b.define("elementary_two",z1*z2+z1*z3+z2*z3)
    e3 = b.define("elementary_three",z1*z2*z3)
    Vand = b.define("vandermonde",(z1-z2)*(z1-z3)*(z2-z3))
    discriminant = b.define("cubic_discriminant",e1*e1*e2*e2-4*e2**3-4*e1**3*e3-27*e3*e3+18*e1*e2*e3)
    b.identity("cubic_vieta_identity",(lam-z1)*(lam-z2)*(lam-z3),lam**3-e1*lam*lam+e2*lam-e3)
    b.identity("cubic_discriminant_vandermonde",Vand*Vand,discriminant)
    trace_D = b.define("trace_Delta",(tx*tx+ty*ty)**2+18*(tx*tx+ty*ty)-8*(tx**3-3*tx*ty*ty)-27)
    b.identity(
        "real_deltoid_discriminant",
        trace_D,
        (tx*tx+ty*ty)**2+18*(tx*tx+ty*ty)-4*(2*tx**3-6*tx*ty*ty)-27,
    )

    n = b.define("trace_unit_norm",a*a+bb*bb)
    S = b.define("trace_circle",n-1)
    z3real = b.define("trace_z3_real",a**3-3*a*bb*bb)
    z3imag = b.define("trace_z3_imag",3*a*a*bb-bb**3)
    trace_x = b.define("paired_trace_x",k*a+a*a-bb*bb)
    trace_y = b.define("paired_trace_y",k*bb-2*a*bb)
    at_paired = b.define("Delta_at_paired_trace",b.expand(trace_D).subs({tx:b.expand(trace_x),ty:b.expand(trace_y)},simultaneous=True))
    b.substitution("substitute_paired_trace",trace_D,{tx:trace_x,ty:trace_y},at_paired)
    cofactor = b.define(
        "paired_trace_cofactor",
        n**3+(2*k*k+9)*n*n+(k**4-22*k*k+4*k*z3real+27)*n+k**4+4*k**3*z3real-4*k*k-20*k*z3real+27,
    )
    b.identity("paired_trace_discriminant",at_paired,(k*k-4)*(2*z3real-k)**2+S*cofactor)
    paired_reciprocal = b.define("paired_reciprocal_factor",(rr-ss)**2*(2*z3real-rr-ss)**2)
    b.identity("reciprocal_pair_norm_factor",(rr+ss)**2-4,(rr-ss)**2+4*(rr*ss-1))
    b.identity("strict_reciprocal_amgm",rr*(rr+ss-2),(rr-1)**2+(rr*ss-1))
    b.identity("unit_cubic_real_bound",2-2*z3real,(z3real-1)**2+z3imag*z3imag-S*(n*n+n+1))
    at_reciprocal = b.define("Delta_at_reciprocal_trace",b.expand(at_paired).subs(k,rr+ss))
    reciprocal_cofactor = b.define("reciprocal_trace_cofactor",b.expand(cofactor).subs(k,rr+ss))
    b.substitution("reciprocal_trace_specialization",at_paired,{k:rr+ss},at_reciprocal)
    b.substitution("reciprocal_cofactor_specialization",cofactor,{k:rr+ss},reciprocal_cofactor)
    b.identity(
        "nonunimodular_discriminant_sign",
        at_reciprocal,
        paired_reciprocal+S*reciprocal_cofactor+4*(rr*ss-1)*(2*z3real-rr-ss)**2,
    )
    b.identity("cleared_reciprocal_pair_factor",(rr*z1-1)*(z1-rr),rr*(z1*z1+1)-(rr*rr+1)*z1)
    b.save()


def main():
    generate_core()
    generate_boundary()
    generate_cusp()
    generate_geometry()


if __name__ == "__main__":
    main()
