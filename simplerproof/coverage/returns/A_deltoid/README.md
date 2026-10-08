# Coverage proof return

Read **COVERAGE.md** for the complete proof and **STATUS.md** for the exact
boundary between proved results and the remaining atlas inputs.

The main result is a global analytical proof of Claim A: precisely 18 positive
local maxima, all with R=3^13/2^12. The seed is exactly
(alpha,2alpha,-alpha,-2alpha), cos(alpha)=1/4.

The sheet and topology arguments prove the requested conditional coverage
theorem. They also prove, relative to MC1–MC5, that the entire non-Tao
Hadamard quotient is connected. Consequently any nonempty finite Record
union with fully certified boundaries covers it.

## Exact replay

The acceptance suite needs Python 3.10 or newer and SymPy. The supplied
requirements.txt pins the version used for the recorded run.

~~~sh
python3 -m pip install -r requirements.txt
python3 verify_all.py
~~~

All mathematical acceptance uses exact arithmetic. A failure exits nonzero.
The recorded run took about seven seconds in the provided environment.
No GPU, external service, or interval branch-and-bound campaign is required.

## Files

| File | Contents |
|---|---|
| COVERAGE.md | Complete integrated proof, including the strengthened connectedness/coverage theorem |
| STATUS.md | Proof status, imported assumptions, outstanding Record requirements and numerical provenance |
| DELTOID_REDUCTION.md | Global reduction of all positive maxima to two deltoid boundaries |
| TWO_BOUNDARY.md | Exact exhaustive classification on those boundaries |
| EXACT_MAXIMA.md | Exact seed, Hessian, 144 maps, 18-point orbit and certified neighborhoods |
| SHEETS_TOPOLOGY.md | Sheet action, continuity, finite Record boundary criterion and assembly |
| CONNECTEDNESS.md | Stronger theorem that the non-Tao quotient is connected |
| CONDITIONING.md | Exact optional Task D results on the affine Fourier family and at Tao |
| verify_all.py | Runs every exact verification module |
| exact_maxima.py | Independent structural Laurent construction and algebraic endpoint/orbit checks |
| verify_deltoid_reduction.py | Exact identities, elimination, root counts, interval signs and inward boundary curvature |
| verify_two_boundary.py | Exact two-boundary formula, stationary census and transverse instability |
| verify_sheet_branches.py | Exact branch algebra, maximum-frame identities and Fourier degeneration |
| verify_conditioning.py | Exact uniform affine-Fourier and Tao spectra |
| data/rfourier.json | The supplied Fourier coefficients, compared against an independent exact regeneration |
| VERIFICATION.log | Executed acceptance output |
| INPUT_SHA256.json | Hashes of the supplied handoff source files |
| OUTPUT_SHA256.json | Hashes of this return's files, excluding this hash file itself |

The actual finite atlas, its boundary-cover certificates and its local
quartet-exclusion certificates are not present in the handoff and are not
claimed as completed by this return. Optional Task D is not proved globally.
