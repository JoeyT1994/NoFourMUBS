"""The joint witness (PR #4): the replayed tubes of up to six columns of the pattern admit no unbiased orthonormal
tuple, or every surviving tuple is the known family.

plane_joint_certificate.exclude re-checks the witness's supplied pair and scalar exclusions over every tuple of tubes;
with allow_known, a tuple it identifies as the known (two-parameter or Fourier) family classifies the pattern instead.
The pattern's status is CLASSIFIED when the witness claims the known family (and exclude verified it), else EXCLUDED.
"""
from .. import pinned


def check(model, tubes, chosen, witness, pair_cache, scalar_cache):
    """Raises unless the joint exclusion holds; returns 'CLASSIFIED' or 'EXCLUDED'."""
    pinned.joint.exclude(model, tubes, chosen, witness['joint'], pair_cache=pair_cache, scalar_cache=scalar_cache, allow_known=True)
    return 'CLASSIFIED' if witness['joint'].get('known') else 'EXCLUDED'


def valid(clique, witness):
    """One to six distinct colours of the pattern (integers)."""
    chosen = witness['columns']
    return 1 <= len(chosen) <= 6 and len(set(chosen)) == len(chosen) and all(type(c) is int and c in clique for c in chosen)
