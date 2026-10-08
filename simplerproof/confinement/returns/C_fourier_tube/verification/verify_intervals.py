#!/usr/bin/env python3
"""Outward-rounded checks for descriptive decimals and the F3 correction.

Requires python-flint. All decisions use Arb real balls at 192-bit precision.
The principal cutoff proofs also have independent rational certificates.
"""
from flint import arb, ctx

ctx.prec = 192


def original_rho(r):
    kappa = 12*(1-(1-r*r).sqrt())
    t = kappa.sqrt()/2
    return (6*kappa).sqrt()*t.asin()/t


def improved_rho(r):
    kappa = 12*(1-(1-r*r).sqrt())
    b = 12-(144-20*kappa).sqrt()
    t = b.sqrt()/2
    return (6*kappa).sqrt()*t.asin()/t


def enclose(label, value, lower, upper):
    assert value > arb(lower), (label, value, lower)
    assert value < arb(upper), (label, value, upper)
    print(label, value)


def verify():
    enclose('original rho(0.09138)', original_rho(arb(9138)/100000),
            '0.55000910049', '0.55000910051')
    assert original_rho(arb(9138)/100000) > arb(11)/20
    enclose('original rho(0.0914)', original_rho(arb(457)/5000),
            '0.55013024148', '0.55013024149')
    enclose('improved rho(0.0914)', improved_rho(arb(457)/5000),
            '0.54993843987', '0.54993843988')
    assert improved_rho(arb(457)/5000) < arb(11)/20

    t = (arb(11)/20)/(2*arb(6).sqrt())
    old_cutoff = (1-(1-t.sin()**2/3)**2).sqrt()
    enclose('inverse of original rho at 0.55', old_cutoff,
            '0.0913784975325', '0.0913784975326')

    phase = (arb(2)/3).sqrt()*(arb(26).sqrt()/12).asin()
    projector = ((arb(26).sqrt()/12).asin()/6).sin()
    enclose('Fourier phase bound at M=26', phase,
            '0.3583371793251', '0.3583371793253')
    enclose('Fourier projector bound at M=26', projector,
            '0.0730800638699', '0.0730800638702')
    eta = arb(21)/500
    tube = eta+(arb(2)/3).sqrt()*((arb(26).sqrt()+arb(1767).sqrt()*eta
                                  +72*eta*eta)/12).asin()
    enclose('phase bound for full 0.042 tube', tube,
            '0.5498261986601', '0.5498261986603')
    assert tube < arb(11)/20
    golden_R = (625-275*arb(5).sqrt())/2
    enclose('golden stationary seed R', golden_R,
            '5.0406530937', '5.0406530939')
    print('ARBITRARY-PRECISION INTERVAL VERIFICATION PASS')


if __name__ == '__main__':
    verify()
