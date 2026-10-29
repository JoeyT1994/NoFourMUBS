"""Load the previous, frozen algebraic release without modifying it."""
from pathlib import Path
import sys

HERE = Path(__file__).resolve().parent
ALGEBRAIC = HERE.parent / 'algebraic'
sys.path.insert(0, str(ALGEBRAIC))
from bootstrap import C, MS, NC, ROOT, native_run as R
import scalar_support as S
from flint import arb, arb_mat
from intervals import norm_upper, quadratic_lower, endpoints
