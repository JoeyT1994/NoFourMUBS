"""Intermediate reduced data of one half (λ's, fields, moments), for the staged kernel checks."""
import common  # noqa: F401
import critical_moment_core as core


def side_parts(s, S, t, T, r, Q, g, zz):
    Z, Y, X = core.Z, None, None
    P0 = r * s * s + Q * t * t + s * t * (3 - core.Z)
    return None


def half(vals, g, zz, Xv, Yv):
    s, S, t, T, r, Q = vals
    Zc = core.Z
    P0 = r * s * s + Q * t * t + s * t * (3 - Zc)
    P1 = t * S * S + r * r * T + r * S * (3 - Yv)
    P2 = s * T * T + Q * Q * S + Q * T * (3 - Xv)
    B0 = Q * S * S + r * T * T + S * T * (3 - Zc)
    B1 = T * s * s + Q * Q * t + Q * s * (3 - Yv)
    B2 = S * t * t + r * r * s + r * t * (3 - Xv)
    L0 = g + (9 - Zc) * zz
    L1 = g + (9 - Yv) * zz
    L2 = g + (9 - Xv) * zz
    la, lb, lc = P0 / L0, P1 / L1, P2 / L2
    ba, bb, bc = B0 / L0, B1 / L1, B2 / L2
    lam = dict(la=la, lb=lb, lc=lc, ba=ba, bb=bb, bc=bc)
    fields = dict(u=la * bb, v=la * bc, w=lc * bb, U=lb * ba, V=lc * ba, W=lb * bc, pi=la * zz, PI=ba * zz,
                  up=bb * zz, vp=bc * zz, UP=lb * zz, VP=lc * zz)
    f = fields
    m = core.newton_moments(s, S, t, T, r, Q, f['u'], f['v'], f['w'], f['U'], f['V'], f['W'], f['pi'], f['PI'],
                            f['up'], f['vp'], f['UP'], f['VP'])
    return lam, fields, m
