#!/usr/bin/env python3
"""Check a whole-family Jacobian enclosure with the saved regular preconditioner.

Input JSON: lower,upper (96x72 exact decimal or rational strings), sigma_lower=[num,den].
The caller certifies that the enclosure contains all exact reference Jacobians
in one family interval, with the SAME canonical moving projector and anchor.
References and Jacobians must also use one coherent phase and equation frame.
This script checks the resulting matrix-norm implication, not that upstream
geometric premise. No supplied project code is imported or executed.
"""
from fractions import Fraction as Q
from pathlib import Path
import json,sys
from regular_reference import verify


def check_data(data,certificate_path=None):
    """Check an in-memory exact enclosure; re-verify its saved preconditioner."""
    certificate=Path(certificate_path) if certificate_path else Path(__file__).with_name('regular_reference_certificate.json')
    verify(certificate)
    base=json.loads(certificate.read_text())
    lo=data['lower'];hi=data['upper']
    if not (isinstance(lo,list) and isinstance(hi,list) and len(lo)==len(hi)==96
            and all(isinstance(r,list) and len(r)==72 for A in [lo,hi] for r in A)):
        raise ValueError('lower and upper must each be a 96-by-72 array')
    requested=data['sigma_lower']
    if not (isinstance(requested,list) and len(requested)==2
            and all(type(v)is int and v>0 for v in requested)):
        raise ValueError('sigma_lower must contain two positive integers')
    sn,sd=requested;sigma=Q(sn,sd)
    T=base['jacobian_denominator'];Z=base['jacobian_numerators']
    norm2=Q(0)
    for i in range(96):
        for j in range(72):
            if not isinstance(lo[i][j],str) or not isinstance(hi[i][j],str):
                raise ValueError('interval endpoints must be exact strings, not JSON floating-point numbers')
            l=Q(lo[i][j]);u=Q(hi[i][j])
            if l>u:
                raise ValueError('interval lower endpoint exceeds upper endpoint at (%d,%d)'%(i,j))
            mid=Q(Z[i][j],T)
            error=max(abs(l-mid),abs(u-mid))
            norm2+=error*error
    kappa=Q(13,20);e0=Q(1,100000)
    gap=1-e0-kappa*sigma
    passed=gap>0 and kappa*kappa*norm2<gap*gap
    radius=sigma/60
    return dict(status='PROVED CONDITIONAL MATRIX BOUND' if passed else 'INCONCLUSIVE',
                certified_uniform_moving_bound=passed,
                requested_sigma_lower=[sigma.numerator,sigma.denominator],
                valid_tube_radius_if_passed=[radius.numerator,radius.denominator] if passed else None,
                preconditioner_norm_upper=[13,20],
                rational_midpoint_defect_upper=[1,100000],
                squared_enclosure_error=[str(norm2.numerator),str(norm2.denominator)],
                scope='Conditional on a valid whole-family Jacobian enclosure in the stated common anchor and projector')


def check(path,certificate=None):
    return check_data(json.loads(Path(path).read_text()),certificate_path=certificate)


if __name__=='__main__':
    if not __debug__:raise RuntimeError('Run without Python optimization flags.')
    if len(sys.argv)!=2:raise SystemExit('usage: python family_interval_check.py enclosure.json')
    print(json.dumps(check(sys.argv[1]),indent=2))
