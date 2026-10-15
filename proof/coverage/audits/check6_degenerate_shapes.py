"""Check 6: the Lean route for Corollary 3.2 (SharedColumn.lean): sides of the degenerate shapes
x2=-x1, y2=+-y1  or  x2=x1, y2=-y1 have real Psi (hence are never strict)."""
import numpy as np
from audit_common import psi, rand_phase
rng = np.random.default_rng(0)
m = 0
for _ in range(500):
    x0, x1, y0, y1 = rand_phase(4, rng)
    for x2, y2 in ((-x1, y1), (-x1, -y1), (x1, -y1)):
        A = np.array([[1, 1, 1], [x0, x1, x2], [y0, y1, y2]])
        m = max(m, abs(psi(A).imag))
print('max |Im Psi| over degenerate shapes:', m)
