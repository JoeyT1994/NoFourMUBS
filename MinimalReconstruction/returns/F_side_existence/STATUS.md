# Status: side existence is proved with exact polynomial certificates

## Result and scope

**G1 is complete at the paper-proof and explicit-certificate level.** For
every unit seed with `R > 0`, the specified construction gives horizontal
and vertical normalized phase sides with the required Gram matrices and
exact polynomial signatures:

\[
2T(B)=\chi+i\sqrt R,\qquad 2T(C)=\chi-i\sqrt R.
\]

Both sheet choices are controlled. The proof includes `dF=0`, either allowed
square-root sign there, and every cube-root choice. It adds no guard to the
strict domain and does not assume a side or completion already exists.

The main proof is `SIDE_EXISTENCE.md`; `CERTIFICATE_GUIDE.md` gives the
certificate schemas, dependency order, and Lean integration route.

## 1. Proved on paper

The complete implication from unit seeds and `R>0` to the two requested side
candidates is proved, using the supplied explicit polynomial identities:

1. The horizontal and transposed-vertical invariants agree; strictness implies
   `g>eta>0`, `p<9`, and every initial `Pj`, `n`, and radical divisor is nonzero.
2. Three new independent-Gram identities I--III imply that `dF` is real and
   `dF²=n²−4|alpha|²`. The permitted sign gives `rho>=n/2>0`.
3. Small scalar identities give `|sigma|²=rho`, the Hermitian Gram matrix,
   the mixed symmetric identities, and first-row Fourier flatness.
4. Two further explicitly certified Gram polynomials, with 21 and 19 auxiliary
   monomials, imply the remaining third-row Fourier-flatness equation.
5. The finite Fourier calculation proves all nine entries are unimodular,
   the first row consists of ones, and `SS*=G`.
6. The permanent and a universal phase-side polynomial identity give `T(S)=gz`.
   That phase-side identity is used only after construction and flatness, so
   there is no circular existence assumption.
7. Transposition of the negative vertical side gives exactly the second
   upstream candidate statement. Both row-product formulas from the reference
   are also recovered without dividing by any Fourier row coefficient.

No irreducibility, faithful embedding, Zariski density, generic-specialization
argument, or product-regularity hypothesis is used.

## 2. Certified by exact computation

The complete replay was run successfully with Python **3.12.14** and SymPy
**1.14.0**. All acceptance arithmetic is exact integer/rational polynomial
arithmetic. Timing measurements alone use floating point.

| Module | Exact content | Recorded wall time |
|---|---|---:|
| Strict domain | 24 invariant, divisor, and normalization certificates | 1.522 s |
| Independent Gram | 4 compact lambda bridges; I--III, Y0, Y1; determinant identity | 13.525 s |
| Constructor and y reduction | 19 core and 12 third-row reduction cofactor identities | 0.611 s |
| Fourier and signature | 39 identities, including both row products and transpose transport | 0.045 s |
| Independent linkage audit | 14 identities connecting both polynomial models to physical flatness | 0.630 s |
| **Complete replay** | **All five modules PASS** | **16.335 s** |

The authoritative receipt and complete module output are in `verification.json`
and `verification_logs/`. The run was invoked by `python3 verify_all.py --record`.

The principal certificate size issue is resolved by an explicit coefficient
partition. The full I--III residuals have 407, 998, and 682 terms; the two
larger Y residuals have 16,629 and 41,483 terms. Their supplied cofactors are
partitioned by powers of two independent variables into **612 coefficient
identities**, the largest expanded side having **525 monomials**. The largest
cofactor block has **243 monomials**. These are ordinary polynomial
coefficient identities; no additional denominator or missing stratum is
introduced by the partition.

The small constructor, y-reduction, and assembly cofactors have at most
3, 11, and 32 monomials, respectively. Their verifiers check the actual
cofactor multiplications and fixed mathematical targets, not samples.

Independent review checked all compact rational formulas and clearing factors,
the physical third-row Fourier coefficient, module linkage, displayed
factored I--III cofactors, normalization, and the final target. See
`domain/CORE_REVIEW.md`. No substantive error in the reference construction
or its horizontal/vertical conventions was found.

## 3. Numerical evidence

**None is used.** No floating-point seed sample, numerical fitting, or
approximate residual supports an acceptance decision. The supplied exact
cyclotomic normalization example is a polynomial identity with an explicit
cofactor, and is not used to infer a universal theorem.

## 4. What remains open

**No mathematical obligation in this handoff's side-existence target remains
open**, relative to the explicit polynomial certificates and the elementary
real/complex reasoning in the proof.

The full Lean matrix theorem has **not** been compiled or completed in Lean.
The package supplies uncompiled supporting source in `DomainLemmas.lean`,
`SmallPolynomialLemmas.lean`, and `AssemblyLemmas.lean`, each with complete
scalar/ring proof scripts and no admitted statements. The remaining formal
work is to replay the Gram coefficients, instantiate complex conjugates and
nonzero divisors, choose the roots, and assemble the matrices against the
upstream definitions. Exact Python certificate verification is kept distinct
from Lean kernel verification.

The forced lower-right block's flatness is a **separate handoff**. This result
does not, by itself, establish the full `MatchedExistence` proposition or the
global no-four-MUB theorem. It proves precisely the side-existence input.

## Output integrity and provenance

`SOURCE_HASHES.json` records the supplied archive and the reference files used
to interpret the task. No external source or unsupplied project was required.
`FILE_HASHES.json` records the output payload, excluding the hash file itself.
The archive contains this `output/` folder and can be replayed without the
reference handoff.
