# Reduction: no four MUBs ⇐ the cell statement Q on a small seed domain

## Statement

Write H₊(θ) for the positive-sheet reconstruction at seeds
θ = (a,b,c,d) ∈ T⁴ ([RECONSTRUCTION.md](../MinimalConstruction/RECONSTRUCTION.md) §3).
Write R(θ) for its strict-corner invariant, and (Xh,Yh,Zh) and (Xv,Yv,Zv)
for the squared moduli of the off-diagonal entries (21), (31), (32) of
Gh = 6I − EE† and Gv = 6I − EᵀĒ. Define

    F  = { θ :  Xh ≥ Yh ≥ Zh,  Xv ≥ Yv ≥ Zv,  (Xh,Yh,Zh) ≥_lex (Xv,Yv,Zv) },
    D₀ = { θ :  R(θ) > 0  and  R(θ) ≥ R(c) for all 400 positional 3×3 corners c of H₊(θ) }.

> **Theorem (reduction).** Assume the accepted reconstruction inputs. Suppose
> that
>
> **(Q)** for every θ ∈ D₀ ∩ F, the matrix H₊(θ)/√6 does not extend, together
> with the standard basis, to four mutually unbiased bases.
>
> Then there are no four MUBs in C⁶.

The accepted reconstruction inputs are listed in
[ASSUMPTIONS.md](../MinimalConstruction/ASSUMPTIONS.md).

D₀ ∩ F is about 8.9·10⁻⁵ of T⁴, measured below. The numerical campaign
certifies Q cell by cell ([BUDGET.md](BUDGET.md)).

## Proof

Call a Hadamard H *extendable* if {I, H/√6} extends to four MUBs. Any
quartet can be rotated so that its first basis is I. So a quartet gives an
extendable H, and it suffices to show that no H is extendable.

**(a) Extendability is invariant under**
- H ↦ PHQ with P, Q monomial. P acts on the whole configuration and fixes
  I as a set of rays; Q only relabels and rephases the carrier.
- H ↦ H̄. Conjugate every basis.
- H ↦ Hᵀ. We have Hᵀ = conj(H†). Moreover H† is extendable, because
  applying H†/√6 to the quartet {I, H/√6, V, W} gives {H†/√6, I, …}.

**(b) Exceptional classes.** H is not equivalent to F6 or to Tao:
- The Fourier family, which contains F6, is not extendable (Jaming et al.,
  [arXiv:0902.0882](https://arxiv.org/abs/0902.0882)).
- Tao is in no MUB triple
  ([ProvenResults/ExceptionalEndpoints/Tao](../ProvenResults/ExceptionalEndpoints/Tao/README.md)).

**(c) R is a function of the positional corner.** Take E to be the
dephased corner. [Domain/verify_reduction.py](Domain/verify_reduction.py)
checks, as exact Laurent-polynomial identities in the unit seeds, that R is
unchanged under:
- all 36 row and column orderings of the corner, followed by re-dephasing;
- E ↦ Eᵀ;
- E ↦ Ē.

The same script checks how the moduli move:
- row orderings permute (Xh,Yh,Zh) through the full S₃ action on the three
  pairs, and leave (Xv,Yv,Zv) fixed;
- column orderings do the same with the roles of h and v exchanged;
- transposition swaps the h and v triples;
- conjugation fixes both.

So the 400 corner values {R(c)} of H form a multiset that is invariant under
every operation in (a).

**(d) Canonical corner.**
- By strict-corner coverage, some corner of H has R > 0. Choose a corner c*
  with the largest R. Then R(c*) > 0.
- Move c* to the top left by row and column permutations.
- Row orders can sort the h-triple. Column orders can then sort the
  v-triple without disturbing the h-triple. If the sorted h-triple is
  lexicographically smaller than the v-triple, transpose first, which swaps
  them. This produces an extendable H′, by (a), whose dephased top-left
  corner has seeds θ ∈ F, with R(θ) = R(c*) > 0.

**(e) Sheet.**
- By strict completion exhaustion and positive-sheet coverage, H′ is
  equivalent to H₊(θ) or H₋(θ). The Tao exceptions are excluded by (b).
- In the second case, [Sheets](../ProvenResults/Sheets/README.md) gives
  H₋(θ) ≅ conj H₊(θ̄). Then conj H′, which is extendable by (a), is
  equivalent to H₊(θ̄).
- Moreover θ̄ ∈ F and R(θ̄) = R(θ), by (c).
- In both cases some θ′ ∈ F has H₊(θ′) equivalent to an extendable matrix.

**(f) Maximality.**
- H₊(θ′) is equivalent to H′ or conj H′. By (c), its corner multiset is
  that of H.
- Its corner (012|012) has R = R(θ′) = R(c*), which is the maximum.
- So θ′ ∈ D₀ ∩ F and H₊(θ′) is extendable, contradicting (Q). ∎

**Remarks.**
- The proof does not need any seed map to preserve the Hadamard class. For
  the record, [Domain/seed_symmetry.py](Domain/seed_symmetry.py) finds
  numerically that exactly 72 of the 144 corner maps do.
- Ties in the maximum or in the orderings are harmless, because all
  inequalities are non-strict.
- D₀ and F are cut out by explicit inequalities in θ and in the entries of
  H₊(θ). A cell is discarded when one of these inequalities fails
  rigorously throughout it.

## Size of the domain (Monte Carlo on uniform θ ∈ T⁴)

| quantity | value | script |
|---|---|---|
| P(R > 0) | 0.32 (40,000 samples) | [corner_domain.py](Domain/corner_domain.py) |
| strict corners of a generic H₊ | 400 of 400 (median; minimum 376) | corner_domain.py |
| vol D₀ / vol T⁴ | 6.4·10⁻³ | corner_domain.py |
| vol F / vol T⁴ | 0.0137, which is 1/72; each orbit meets F exactly once (2,000 of 2,000) | [fundamental_domain.py](Domain/fundamental_domain.py) |
| **vol(D₀ ∩ F) / vol T⁴** | **≈ 8.9·10⁻⁵** | product of the above |
| min R and min g on D₀ | 54 and 3.5 (257 samples of D₀) | [d0_stats.py](Domain/d0_stats.py) |
| cells meeting D₀ / cells centred in D₀ | 1.26 at ρ = 0.01, 1.6 at ρ = 0.02 | [d0_overhead.py](Domain/d0_overhead.py) |

**Near F6.** D₀ reaches R ≈ 0 only near F6. Along the Fourier family,
R_max ≈ (300–700)·d_F². [FourierNeighbourhood](../ProvenResults/FourierNeighbourhood/README.md)
removes d_F ≤ 1/1024.
