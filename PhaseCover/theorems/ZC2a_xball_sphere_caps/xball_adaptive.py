"""Fast cached numerical hole-filling; independent replay supplies all verdicts."""
import xball_fast
from xball_groups_build import CachedTransfer

# The fixed local affine model has one eigensystem throughout threshold
# bisection. This changes floating proposal cost only; stored witnesses have
# the unchanged scalar-multiplier format and are always checked in Arb.
xball_fast.FastTransfer.check_local_data = CachedTransfer.check_local_data

if __name__ == '__main__':
    xball_fast.main()
