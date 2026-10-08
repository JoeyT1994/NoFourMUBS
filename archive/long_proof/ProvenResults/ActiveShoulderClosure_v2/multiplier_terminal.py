"""Reserved exact PSD-multiplier terminal. No theorem is installed yet.

Public interface for the independent R**k * P certificate work. The box
arguments are four exact radian centers and nonnegative rational radii.
Both methods deliberately fail closed until a pinned proof and independent
checker are reviewed. No externally supplied ok/status field is trusted.
"""
STATEMENT='outside_strict_D0'
ENABLED=False

def propose(centers,radii):
    """Return a finite witness proposal, or None when unavailable."""
    return None

def replay(centers,radii,certificate):
    """Prove the stated exclusion on the entire closed box, or raise.

    A future implementation must bind exact polynomial identities to the
    adopted signed Gram minors, justify all multiplier signs on strict D0,
    and handle R=0 without dividing by zero or asserting strict negativity
    there. R=0 maximal physical points have the separate A1/F6 treatment.
    """
    raise ValueError('exact PSD multiplier theorem/checker not installed')
