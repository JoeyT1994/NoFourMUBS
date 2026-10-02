"""Exact-census maximum and analytic F6 tube margin for N(z,w).

N(z,w)=[[F,F],[F diag(1,z,w),-F diag(1,z,w)]], F_ij=exp(2pi*i*j/3).
Angles alpha,beta are in radians, z=exp(i alpha), w=exp(i beta).
See FOURIER_MAX_R.md. These are reference-matrix bounds, not seed lifts.
"""
from flint import arb


def maximum_corner_R(alpha,beta):
    """Outward enclosure of max over all 400 corners, also for angle boxes."""
    a,b=arb(alpha),arb(beta)
    return 36*(abs((2*b-a).sin())+abs((a+b).sin())+abs((b-2*a).sin()))**2


def reference_radius(alpha,beta):
    """Safe radius about this Fourier reference in either orientation.

    The output bounds maximum-column projector distance. The default
    whole-family radius remains valid when the F6 transfer gives no gain.
    """
    a,b=arb(alpha),arb(beta)
    if not a.is_finite() or not b.is_finite():
        raise ValueError('Finite outward radian angles are required')
    cap=maximum_corner_R(a,b).upper()
    uniform=(arb(1)/16384).lower()
    if cap<=36:
        distance=(arb.pi()*cap.sqrt()/144).upper()
        margin=(arb(1)/30-distance).lower()
        if margin>uniform:
            return dict(radius=margin,reason='analytic_F6_transfer',R_upper=cap,
                        F6_distance_upper=distance)
    return dict(radius=uniform,reason='uniform_family_tube',R_upper=cap)
