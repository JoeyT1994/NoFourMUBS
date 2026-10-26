# Handoff X: no quartet edge near F6

**Goal.** Prove that no Hadamard matrix close to the Fourier matrix F6 belongs to four mutually unbiased bases in C⁶.
Concretely, find the largest explicit ρ (target **ρ ≥ 0.125**, ideally 0.15) such that

> for every complex Hadamard matrix H with d([H], [F6]) ≤ ρ, **`QuartetEdge H` fails**: there are no unitaries K, L
> with I, H/√6, K, L pairwise unbiased.

Here d is the horizontal phase quotient distance of return W (`context/W_REPORT.md` §2; Frobenius norm of horizontal
phase increments, no division by 6). `QuartetEdge` is defined in `context/Basic.lean`.

Label every claim **PROVED**, **CERTIFIED** (exact or interval computation, replayable), **NUMERICAL** or
**NOT ESTABLISHED**. Context files are in `context/`.

---

## 1. Why we need it

The computer proof covers Hadamard space by balls, each certified quartet-free by Stage C (`context/STAGEC.md`).
Coverage is an open-and-closed argument (`context/SEED_ATLAS_SPEC.md`).

- **The obstacle.** Near F6 the ordinary seed balls cannot reach (R = 0 at F6), and Stage C only certifies small balls
  in U/W's chart. One edge ball passes at chart radius 0.125, which reaches only 0.044–0.089 from F6; radii 0.15 and
  0.3 fail Stage C. Covering W's neighbourhood with Stage-C'd edge balls would take on the order of 100 of them, each
  with its own computer certificate and kernel check.
- **What W gives** (`context/W_REPORT.md`, replayed). One fixed U chart Φ on an explicit ellipsoid D covers every class
  with d ≤ 0.15. Φ is injective modulo the 72 Fourier stabilisers, and Φ(∂D) lies at distance > 0.15.
- **What this result would allow.** With X, the region N = {d ≤ ρ} is quartet-free by a theorem: no Stage C and no edge
  balls near F6. The atlas then only has to show that N's boundary sphere (parametrised by W's chart) lies inside seed
  balls, by transfers. The seed atlas was grown against a region of radius 0.125 around F6, so ρ ≈ 0.125–0.15 fits it.

## 2. What is known

- **Computer evidence.** The earlier atlas certified, by Stage C in interval arithmetic, that the 25-dimensional ball of
  horizontal radius 0.125 around F6 (the "F6 record") contains no quartet edge. So the statement is true at ρ = 0.125;
  we want a proof that does not need that 25-dimensional computation (its boundary is what is expensive).
- **Fourier families.** The literature reportedly shows that matrices of the affine Fourier family F(a, b) cannot be
  extended to four MUBs (Jaming, Matolcsi, Móra, Szöllősi and Weiner, 2009, "A generalized Pauli problem and an
  infinite family of MUB-triplets in dimension 6"). **Check this yourself.** Its method (discretisation plus
  certified computation) may adapt to the full 4-parameter neighbourhood.
- **Structure near F6** (U, W): every class with d ≤ 0.15 is Φ(p) for p in D (4 parameters), with explicit predictor
  and tube (W §3), side determinant > 0.729, and the 72-fold isotropy.
- **Stage C's mechanism** (`STAGEC.md`): a quartet edge needs a unitary K unbiased to I and to H/√6, i.e. a Hadamard K
  whose rows are unbiased to H's columns; Stage C excludes this by a label graph on bins of K's phases. Any proof that
  K cannot exist for H near F6 is what we need.

## 3. Suggested routes

1. **Perturb from F6.** Show that the set of H admitting even **one** unbiased Hadamard partner K (a MUB triplet
   {I, H, K}) has an explicit structure near F6. Then show no two such partners are mutually unbiased, uniformly in
   p ∈ D.
2. **Adapt Jaming et al.** to the 4-parameter family Φ(D), with explicit constants and a finite certificate.
3. **Stage C in W's coordinates.** A single Stage-C-type certificate on Φ(D) (4 parameters), using W's sharp
   enclosures in place of a ball enclosure P + Uw ± n. The failure at large radius is the enclosure, not the geometry.

## 4. Deliverables

`REPORT.md` with the theorem (explicit ρ and metric), labelled proofs, and replayable scripts for every CERTIFIED
step (standard library, mpmath or Arb).

Partial results are useful: any ρ ≥ 0.10, or the statement on the Fourier families only, with a plan for the rest.

**Do not use** the MUB atlas itself; the earlier F6 record's Stage C result may be cited only as NUMERICAL evidence.
