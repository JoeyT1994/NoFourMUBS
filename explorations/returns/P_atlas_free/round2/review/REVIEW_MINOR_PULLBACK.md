# Independent audit of the completed-edge Fourier predicate

**Verdict: CORRECT. No mathematical gap found in the claims audited.**

Audited input files under `work/P_atlas_free_round2`:

- `algebra/FOURIER_FREE_TEST.md`
- `verifiers/verify_minor_pullback.py`
- `algebra/SUPPORT_AND_COMPLETION.md`, for the unconditional chart-cover input

The main four-ray completion construction is the stated input to the Fourier
pullback. Its referenced `algebra/FOUR_RAY_COMPLETION.md` is included in the
final package; the initially pending packaging dependency is resolved.

## 1. All400 minors and the normalization

For each of the20 row triples the20 column triples split as

- four triples containing only retained columns;
- twelve triples containing one completed column, paired into six products;
- four triples containing both completed columns.

This gives20(4+6+4)=280 displayed factors in Phi. The exact paired and
two-completed-column identities have the stated signs. The denominator for
one row set is

    (4U)^6 (2u)^4 = 2^16 U^8.

The four minus signs from the final group cancel for every row set. Thus

    Phi = 2^320 U^160 product_(all400 positional minors) det K[A,B].

The column ordering used in the verifier agrees with the written formulas:
the retained columns precede x_plus and x_minus. No row set or column triple
is omitted.

## 2. The transformed edge

The formula uses H^* on each of X,s,p, so it gives exactly the same completion
construction for H^*K. Since L=H^*K/sqrt(6), each three-minor acquires the
nonzero scalar factor (sqrt(6))^3 when passing from L to H^*K. Consequently

    Phi_H = 2^320 U^160 6^600 product_(all400 minors) det L[A,B].

The note only claims equivalence of zero sets here, and that claim is
correct. No missing normalization affects it.

## 3. The sixty physical charts

For a physical retained four-ray system, D is positive rank one with trace12
and zero zeroth row and column. Hence at least one of D_11,...,D_55 is
strictly positive, giving a valid pivot among the five listed choices.

For any such pivot, if all twelve scalar completion coefficients vanished,
their physical conjugate coefficients would vanish as well. Every u on
|u|^2=c would then produce a physical complementary pair. The first entry
of each completed ray is fixed at one and p is nonzero with p_0=0, so this
circle would contain infinitely many different physical common rays in the
complement.

The unconditional support argument rules this out: its Bloch vectors span
at least two dimensions, so a physical four-ray complement has zero or two
common unbiased rays. This argument uses no finite-ray hypothesis and
therefore remains valid on Fourier and singular-minor boundaries.

Some coefficient a_ell is thus nonzero. The formula

    U=-c conjugate(a_ell)/a_ell

is valid on its chart and has |U|=c. The rank-one coefficient compatibility
test is precisely what ensures that the same U solves every coefficient
equation. The uniform indexing count is5 times12=60; including the empty
native-zero-coefficient chart is harmless.

The support proof was also inspected. Its three-number lemma, possible2+1
Fourier-line multiplicities, complementary2+1 counts, and the Bloch-rank
contradiction are consistent. No positivity or normalization gap was found.

## 4. Verifier replay and scope

The gate packaged as `verifiers/verify_minor_pullback.py` was replayed in a
temporary audit copy without changing the original source or receipt.
The result was PASS:

- all symbolic determinant identities held in exact rational Laurent
  arithmetic;
- the nonsingular Vandermonde fixture covered all400 positional minors;
- it produced280 pullback factors;
- the2^320 U^160 normalization held exactly.

The fixture is correctly labeled as an arbitrary matrix rather than a
Hadamard. The general claim is supplied by the symbolic identities and the
written enumeration; it does not rely on extrapolating from the fixture.

The integrated `FOUR_BY_FOUR_CROSS.md`, its verifier, and
`FIVE_COLUMN_ISOMORPHISM.md` were checked against the reviewed versions,
including the physical residual update.

**Not certified by this audit:** the unresolved uniform vanishing implication,
C, F, F′, or a global trace-form signature. The Fourier pullback correctly
labels those goals as unproved.
