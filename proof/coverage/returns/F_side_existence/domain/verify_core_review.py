#!/usr/bin/env python3
"""Independent audit of the raw third-row flatness numerator and reductions.

Read-only with respect to the constructor modules.  This verifies exact
identities, including the relation between the raw numerator and the actual
Fourier coefficient.  It deliberately does not replay the large Gram
substitutions already owned by the separate core certificate module.
"""
from __future__ import annotations

import contextlib
import io
import json
from pathlib import Path
import runpy
import sys
import sympy as s
import time

ROOT = Path(__file__).resolve().parent


def require_zero(name, expr):
    if s.expand(expr) != 0:
        raise AssertionError((name, s.factor(expr)))


def main():
    start = time.perf_counter()
    g, eta, chi, y, c0, c1, c2 = s.symbols("g eta chi y c0 c1 c2")
    quadratic = y*y-chi*y+g*g*eta
    L0 = g*g+c0*(chi-y)
    L1 = g*g+c1*y
    L2 = g*g+c2*y
    U1 = g*g+c0*chi+c0*c1*eta+(c1-c0)*y
    U2 = g*g+c0*chi+c0*c2*eta+(c2-c0)*y
    U1bar = g*g+c1*chi+c0*c1*eta-(c1-c0)*y
    En = g*g*(g*g+c0*chi+(c0*c1+c0*c2-c1*c2)*eta) + \
        ((c1+c2-c0)*g*g+c1*c2*chi+c0*c1*c2*eta)*y
    require_zero("u_numerator", L0*L1-g*g*U1+c0*c1*quadratic)
    require_zero("v_numerator", L0*L2-g*g*U2+c0*c2*quadratic)
    require_zero("conjugate_u_numerator",
                 (g*g+c0*y)*(g*g+c1*(chi-y))-g*g*U1bar+c0*c1*quadratic)
    require_zero("z_lambda0", y*L0-g*g*(y+c0*eta)+c0*quadratic)
    require_zero("delta_square_numerator", L0*L1*L2-g*g*En-
                 (-c0*c1*c2*y+g*g*(c1*c2-c0*c1-c0*c2))*quadratic)

    n, k, K, a, A, gamma, e, h, delta, Delta, d, rho, u, mu, nu, Nu = \
        s.symbols("n k K a A gamma e h delta Delta d rho u mu nu Nu")
    cp, cm, CP, CM, sig, Sig = s.symbols("cp cm CP CM sig Sig")
    D = n*gamma-2*a*k
    Snum = u*rho+mu*a
    pnum = k*rho-delta*A
    mnum = K*A+Delta*rho
    Fy = nu*CP+Nu*cm+sig*cp*CM
    R0 = n*nu*K*rho**3+n*Nu*k*a*rho**2+A*rho*(k*K-h)*Snum
    Rd = n*Nu*rho**3-K*A*A*Snum
    Rb = -n*nu*a*rho**2+k*rho**2*Snum
    raw = delta*R0+e*Rd+h*Rb
    relations = {
        "CP":n*rho*CP-K*rho+Delta*a,
        "cm":n*rho*cm-k*a-delta*rho,
        "sigma":rho*sig-Snum,
        "cp":n*rho*cp-pnum,
        "CM":n*rho*CM-mnum,
        "norm":delta*Delta-h,
        "square":delta*delta-e,
    }
    cofactors = {
        "CP":n*rho*rho*delta*nu,
        "cm":n*rho*rho*delta*Nu,
        "sigma":delta*n*n*rho*rho*cp*CM,
        "cp":delta*Snum*n*rho*CM,
        "CM":delta*Snum*pnum,
        "norm":-n*nu*a*rho*rho-delta*A*rho*Snum+k*rho*rho*Snum,
        "square":Rd,
    }
    require_zero("raw_Fy_connection", n*n*rho**3*delta*Fy-raw-
                 sum(cofactors[name]*expr for name, expr in relations.items()))

    # If sigma*Sig=rho, the original numerator in SIDE_FIBER (2)
    # is rho*sigma*Fy, with no loss because rho and sigma are nonzero.
    original = sig*sig*(nu*CP*Sig+cm*Sig*Nu)+rho*cp*CM*sig*sig
    require_zero("physical_Fourier_coefficient",
                 original-rho*sig*Fy-sig*(nu*CP+cm*Nu)*(sig*Sig-rho))

    Qrho = rho*rho-n*rho+a*A
    quotient, remainder = s.div(raw, Qrho, rho)
    remainder = s.Poly(remainder, rho)
    Lconstant, Llinear = remainder.nth(0), remainder.nth(1)
    if s.Poly(Llinear, delta).degree() > 1:
        raise AssertionError("Unexpected nonlinear delta term in the rho coefficient")
    A0, B0 = s.Poly(Llinear, delta).nth(0), s.Poly(Llinear, delta).nth(1)
    reduced = s.expand(2*e*Lconstant+A0*(e*n+delta*D)+e*B0*(n*delta+D))
    Zrho = 2*e*rho-e*n-delta*D
    require_zero("rho_reduction", 2*e*raw-reduced-
                 (2*e*quotient*Qrho+Llinear*Zrho+B0*D*(delta*delta-e)))
    require_zero("root_rho_relation", Zrho-
                 (e*(2*rho-n-d)+delta*(delta*d-D)-d*(delta*delta-e)))
    constant, linear = s.Poly(reduced, delta).nth(0), s.Poly(reduced, delta).nth(1)
    f0, erem = s.div(constant, e, e)
    require_zero("constant_coefficient_divisible_by_e", erem)
    if s.Poly(reduced, delta).degree() > 1:
        raise AssertionError("Unexpected nonlinear delta in final raw residual")
    raw_vars = (n,k,K,a,A,gamma,e,h,u,mu,nu,Nu)
    for f in (f0, linear):
        if any(coefficient.q != 1 for _,coefficient in s.Poly(f,*raw_vars).terms()):
            raise AssertionError("Noninteger coefficient would invalidate an int(coeff) conversion")

    # Compare the independent result to the audited source without importing
    # or modifying its globals into this module's namespace.
    sys.path.insert(0, str(ROOT.parent/"algebra"))
    with contextlib.redirect_stdout(io.StringIO()):
        source = runpy.run_path(str(ROOT.parent/"algebra"/"y_model.py"))
    substitution = {source[name]:value for name,value in
                    (("n",n),("k",k),("K",K),("a",a),("A",A),
                     ("c",gamma),("e",e),("h",h),("delta",delta),
                     ("rho",rho),("u",u),("mu",mu),("nu",nu),("Nu",Nu))}
    require_zero("source_residual_agrees", source["normal"].xreplace(substitution)-reduced)
    require_zero("source_raw_agrees", source["R"].xreplace(substitution)-raw)
    gram_source = runpy.run_path(str(ROOT.parent/"core"/"gram_model.py"))
    gram_conditions = gram_source["y_conditions"]()
    gram_substitution = {symbol:gamma for symbol in gram_source["AUX"] if str(symbol)=="c"}
    require_zero("Gram_Y0_agrees", gram_conditions[0].xreplace(gram_substitution)-f0)
    require_zero("Gram_Y1_agrees", gram_conditions[1].xreplace(gram_substitution)-linear)
    print(json.dumps(dict(status="PASS_EXACT_INDEPENDENT_REVIEW", identities=14,
                          source_residual_terms=[len(s.Poly(f0,*raw_vars).terms()),
                                                 len(s.Poly(linear,*raw_vars).terms())],
                          integer_coefficients=True,
                          elapsed_seconds=round(time.perf_counter()-start,6)), indent=2))


if __name__ == "__main__":
    main()
