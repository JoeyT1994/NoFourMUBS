# Side-root changes are permutations (target T4)

**Status: proved algebraically, using the accepted identities for the
sign-selected side constructor.** No side-fibre exhaustion, continuity
argument, or numerical evidence is needed for the permutation identity.

**Provenance clarification.** The core sign-switch argument was already
proved in `BalancedAllPartitionsExtension.md` (long proof, preserved at the git tag `archive-2026-10-11`),
§2. This standalone T4 treatment independently recovers that argument,
makes the exceptional `s = 0` chart explicit, and adds a dedicated exact
replay and campaign integration. It is not a claim of a new underlying
sign-switch theorem; the target register had overlooked the embedded proof.

## Statement and precise domain

Use the notation of
[RECONSTRUCTION.md](../../MinimalConstruction/RECONSTRUCTION.md), §2.
Keep the Gram matrix `G` and sheet parameter `z` fixed. Start with the
prescribed sign of `δ` (so `dF ≥ 0`) and any cube root `w³ = ξ`.

1. Replacing `w` by `ωᵇw` sends side column `j` to column `j−b`, with
   indices in `Z/3Z`.
2. If `s ≠ 0`, reversing `δ` is well defined. Write primes for all
   quantities recomputed with `−δ`, and put `t = q/conj(q)`. Then

       ξ′ = t³ conj(ξ),
       w′ = ωᵇ t conj(w)  ⇒  S′[:,j] = S[:,b−j].

   These are all three cube roots of `ξ′`. Thus a square-root reversal
   gives a reflection, possibly followed by a cyclic permutation.
3. On the horizontal side these operations permute only columns 3–5 of
   the completed `H`; on the vertical side they permute only rows 3–5.
   The first three columns or rows, respectively, are fixed pointwise.

The actions are **ordinary permutations**, stronger than monomial
equivalence. They hold separately for either value of `z`; they do not
exchange the positive and negative sheets.

There is a necessary domain qualification: when `s = 0`, the sign-selected
formula is regular, but the reversed-sign formula has `ρ′ = 0` and is
undefined. This really occurs at strict seeds; see §5. Therefore an
unqualified claim that *both raw formulas are defined everywhere on
R > 0* would be false. Every strict point with `dF = 0` has `s ≠ 0`, so
the qualification leaves the campaign's intended application intact.

## 1. The only side identities used

The accepted side formulas, for the prescribed sign, give

    G > 0,  |u| = 1,  n = 1 − |μ|² > 0,  ρ > 0,
    |ξ| = 1,  3MM† = G.

Since `ξ = σ²/ρ`, the identity `|ξ| = 1` implies `|σ|² = ρ`. The squared
norm of the second row of `M` then gives

    n = ρ(1 + |q|²),       α = ρq = μ² − u conj(μ).             (1)

These identities are used only for the prescribed sign. We do **not**
assume validity or permutation invariance for the reversed sign.
In particular, the branch-choice clause in the accepted input register
is not an input to this proof.

If `μ ≠ 0`, then `α ≠ 0`: equality `μ² = u conj(μ)` would force
`|μ|² = |μ|`, whereas positive definiteness gives `0 < |μ| < 1`.
Thus `q ≠ 0` exactly when `s ≠ 0`.

## 2. Reverse the square root explicitly

The definitions give `dF′ = −dF`, hence, by (1),

    ρ′ = n − ρ = ρ|q|² > 0,       q′ = 1/conj(q).              (2)

All other original divisors are unchanged. In particular, reversing the
sign introduces no new zero divisor when `s ≠ 0`.

An elementary identity following from (1) is

    μ(1 + |q|²) + u conj(q) + q conj(μ) = 0.                  (3)

Indeed, multiplication by `ρ` turns the left side into

    μ(1 − |μ|²) + u conj(α) + α conj(μ) = 0,

after substituting `α = μ² − u conj(μ)` and `|u| = 1`.
The conjugate of (3), with `σ = u + μq`, also reads

    conj(μ) + μ conj(q) + q conj(σ) = 0.                      (4)

Subtract (3) from `q` times (4). The result is

    q² conj(σ) = μ + u conj(q),
    σ′ = u + μ/conj(q) = q² conj(σ)/conj(q).                  (5)

Writing `c+`, `c−` for the two coefficients in the third row of `M`,
direct substitution of `δ′ = −δ` and (2) gives

    c+′ = (k + δ/q)/n = c−/q,
    c−′ = (k/conj(q) − δ)/n = c+/conj(q).                     (6)

Let `J` exchange Fourier indices 1 and 2 and fix index 0, and set
`t = q/conj(q)`, so `|t| = 1`. Equations (5)–(6) prove, entry by entry,

    M′ = M J diag(1,t,conj(t)).                               (7)

Using (2) and (5) in the definition of `ξ′` gives

    ξ′ = (σ′)²/ρ′ = t³ conj(ξ).                              (8)

In particular, the reversed sign also has `|ξ′| = 1` and the prescribed
Gram matrix. Its flatness will follow from the permutation below.

## 3. Absorb the phase into the cube root

First choose `w′ = t conj(w)`. Because `|w| = 1`, equations (7)–(8) give

    M′ P(w′) = M P(w) J.

The Fourier matrix satisfies `J F3 = F3 J`, so

    S′ = M′ P(w′) F3 = S J.                                  (9)

For any other cube root, `w′ = ωᵇ t conj(w)`, write `A` and `B` for
the second and third columns of `M P(w)`. The old side column is

    S[:,j] = M[:,0] + A ωʲ + B ω⁻ʲ.

The new one is

    S′[:,j] = M[:,0] + B ωʲ⁻ᵇ + A ω⁻ʲ⁺ᵇ = S[:,b−j].

Similarly, changing only `w` to `ωᵇw` gives `S[:,j−b]`.
This proves both root claims, including the case `dF = 0`; nothing was
divided by `dF` or by a difference of roots.

## 4. Completion and the campaign corollary

The completion formula is

    H = [[E,B],[C,D]],       D = −C E† adj(Gh) B/g.

If a horizontal change gives `B′ = BΠ`, linearity gives `D′ = DΠ`,
and hence `H′ = H diag(I₃,Π)`. If a vertical side changes from `S` to
`SΠ`, then `C′ = ΠᵀC`, `D′ = ΠᵀD`, and
`H′ = diag(I₃,Πᵀ)H`. Independent changes combine these two actions.

These permutations preserve the 400-element corner-R multiset. A column
permutation merely relabels the carrier basis. A row permutation transports
each additional ray by the same unitary, preserving the standard basis
as a set and preserving all absolute overlaps. Thus they preserve the
quartet-extension question and common-ray overlap data under this transport.

**Campaign corollary.** On any strict seed cell where the analytically
continued formulas in `fasthplus.jl` have certified nonzero divisors, they
represent the sign-selected `H₊` pointwise up to the stated permutations,
even where `dF` changes sign. The proof is pointwise; no globally fixed
permutation relative to a discontinuous principal-root convention is needed.
If a branch has a zero divisor, this corollary does not license evaluating
it or accepting the cell.

At `dF = 0`, equation (1) and `ρ = n/2` give `|q| = 1`. Both signs
have the same positive `ρ = n/2`, and all the preceding formulas apply.
This closes precisely the branch-equivalence gap in T4. It does not
remove the R = 0 branch layer, prove an interval implementation correct,
or reduce the other reconstruction assumptions.

## 5. The exceptional chart at s = 0

If `s = 0`, then `μ = α = q = 0`, `n = 1` and `σ = u`. Since
`|σ|² = ρ` and `|u| = 1`, necessarily

    ρ = 1,       dF = 1,       ρ′ = 0.

For an exact strict seed illustrating the issue, take

    a = ω,  b = ω²,  c = i,  d = (3+4i)/5.

Its horizontal `s` vanishes, while direct exact calculation gives

    g = (24 + 6√3)/5 > 0,       R = 5184/625 > 0.

The reversed-sign raw expression has `q′ = 0/0`. The underlying unordered
side nevertheless has the regular sign-selected representative: on a
neighbourhood of this point that representative has nonzero divisors and
locally selectable roots, and (9) identifies the unordered sides wherever
the reversed formula is defined. Thus the unordered side extends there,
but a Taylor model of the unmodified singular formula is not justified.

## Dependencies and replay

This proof uses the explicit definitions and the sign-selected identities
`G > 0`, `|λⱼ| = 1`, `ρ > 0`, `|ξ| = 1`, `3MM† = G` from the accepted
side-formula input. It does not prove those seed identities independently.
Strict-corner coverage, the two-orbit theorem, matched-completion flatness,
and positive-sheet coverage are not needed for the algebraic identity.
Their existing roles in the global campaign are unchanged.

[verify_branch_lemma.py](verify_branch_lemma.py) checks the rational
identities exactly, including an equal-ρ (`dF = 0`) specialization and
the exceptional strict seed. It also checks the explicit predicted
permutations against the production constructor at high precision; those
last checks are implementation regressions, not the universal proof.

    python3 ProvenResults/Sheets/verify_branch_lemma.py

The root runner exposes the same check as `side_branch_lemma`.

The 28 September verification receipt (`Verification/T4_branch_lemma_2026-09-28/summary.json`, at the tag `archive-2026-10-11`)
records PASS for this check, the existing reconstruction check, and sheet
conjugation. The new check includes 27 exact rational identities and 480
numerical comparisons at 80 digits, on both sheets and both sides, including
approaches to the exceptional chart. These numerical checks do not replace
the proof above.
