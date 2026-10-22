# Handoff T: no Fourier-free MUB triples, by a classified maximum on triple space

**Goal.** Prove statement **F**: *every MUB triple in ℂ⁶ has at least one Fourier-type transition.* F removes the
computer atlas from the proof that ℂ⁶ has no four mutually unbiased bases (§1). This brief proposes a concrete strategy
that has just worked one level down, for the space of Hadamard matrices (§3), and asks you to carry it out on the
space of triples, or to report precisely where it fails.

This is research mathematics. Partial results are valuable (§6). Label every claim **PROVED** (written proof),
**CERTIFIED** (exact finite computation, replayable), **NUMERICAL** (evidence only) or **NOT ESTABLISHED**.

Context files referenced below are in `context/` in this zip.

---

## 1. Why F suffices

- A complex Hadamard matrix H of order 6 has |Hᵢⱼ| = 1 and HH* = 6I. Two orthonormal bases with unitary matrices A, B
  are mutually unbiased exactly when √6 A*B is Hadamard. A **triple** is {I, H/√6, K/√6} with H, K and its third
  transition L = H*K/√6 all Hadamard; a **quartet** adds a fourth basis.
- **Fourier type:** H is equivalent (row and column permutations and phases) to a member of the two-parameter Fourier
  family N(z, w) = [[F₃, F₃], [F₃D, −F₃D]], D = diag(1, z, w), or its transpose.
  - **Lemma 0 (proved):** H is of Fourier type ⇔ one of its **400** positional 3×3 minors is singular.
    Use all 400 minors, not the twenty of one strip.
- **E (Jaming, Matolcsi, Móra, Szöllősi, Weiner 2009; re-certified):** no pair {I, Fourier-type H} extends to four
  MUBs.
- **Tao's matrix** does not extend even to a triple (Brierley–Weigert 2009).
- **F ⇒ no four MUBs:**
  1. Suppose a quartet {U₀, U₁, U₂, U₃} existed.
  2. {U₀, U₁, U₂} is a triple, so by F some pair Uᵢ, Uⱼ has a Fourier-type transition.
  3. Up to equivalence that pair is {I, Fourier-type H}, and it extends to four MUBs, contradicting E.
- F is weaker than the triple classification conjecture of Matolcsi, Matszangosz, Varga and Weiner (every triple is in
  the continuous Zauner–Szöllősi family or is the isolated Fourier triple). You only need F.
- **Do not use** the atlas or anything derived from it: certified balls, Stage C, boundary transfers. With E, F is
  equivalent to "no four MUBs", which the atlas proves, so using it would be circular.

## 2. Triple space and what is known

- **Triple space.** V is the real-algebraic set of canonically dephased triples: 55 phases, 96 real equations. It is
  compact. Let G be the finite relabelling group.
- **Π and V_F.** Π(H, K) = ∏ over T ∈ {H, K, L} and the 400 positional 3×3 minors M of T of |det M|². Then
  V_F = {Π = 0} is the closed set of triples with a Fourier-type transition. **F is the statement Π ≡ 0 on V.**
- **Known triples:**
  - the continuous family GM: two transitions in the Fourier family or its transpose, the third in Szöllősi's
    two-circulant family X⁽²⁾;
  - the isolated Fourier triple (I, F₂⊗F₃, D₂F₂⊗D₃F₃).

  Both lie in V_F.
- **Both known classes are whole connected components of V, and each is open and closed in V.**
  - GM: return L's component theorem.
  - The isolated triple: rigid, with Jacobian rank 55 (return P).

  See `context/P_REVIEW.md` and `context/L_REVIEW.md`.
- **A (partial, return P round 2):** every companion K of a Fourier pair {I, N(z, w)} with two rays in the same
  ternary-clock orbit lies in a known class. What remains is companions whose six rays carry six distinct clock
  labels. See `context/P_round2_REPORT.md` and `context/P_round2_REVIEW.md`.
- **Finiteness and dimension (return P):** for fixed H the common unbiased rays of {I, H/√6} form a finite set,
  typically 48 and up to 120, so each H has finitely many companions K. Fourier-free triple space has real dimension
  ≤ 4.
- **The reconstruction** (`context/PROOF.md`, Step 2): every non-Tao Hadamard class other than F₆ is the unique
  matched completion H₊(θ), or its conjugate, of a strict seed θ ∈ T⁴. Strict means R(θ) > 0 for the corner scalar R
  (`context/PROOF.md` §2.1). The class depends continuously on θ.
- **Numerics (NUMERICAL):** from every one of 12,021 points spread over the whole Hadamard space, a search found
  379,944 triples, all of known form: 377,214 continuous, 2,730 isolated, none unexplained. Every one has a
  Fourier-type transition. See `context/triple_test_README.md`, `context/triple_test_SUMMARY.md`, and per-record data in
  `context/triple_test_per_record.csv.gz`.

The open part is **C: V has no connected component on which Π > 0.**

## 3. The model that just worked: the strict seed region is connected

In the Hadamard-matrix proof (`context/PROOF.md` Lemma 1.1, now formalized in Lean as
`Step2.isConnected_strict`, `context/StrictConnected.lean`):

1. **Every component has a summit.** S = {θ ∈ T⁴ : R(θ) > 0} is open in a compact torus, with R = 0 on its
   boundary. So every connected component of S contains a positive local maximum of R.
2. **The summits are classified exactly.** Theorem 1: the positive local maxima are exactly 18 seeds, one orbit,
   R_max = 3¹³/2¹². This is an exact deltoid-coordinate analysis, about 650 exact claims.
3. **The summits are joined explicitly.** Paths inside S join all 18: with z = e^{it}, w = e^{is}, triples
   e = (z⁻², z, z), o = (w⁻², w, w) and the seed (e₁/o₂, o₁/e₃, o₁/e₂, e₁/o₃):
   - R = 256(1−2x)(1+2x)⁵(1+2x²)²(4x³−2x+1)² on s = −t (x = cos t);
   - R ≡ 256 on s = t + π.

   So S is connected. See `context/verify_paths.py` for the exact replay.

## 4. The proposed strategy for triples

**The key observation (PROVED, elementary).** F holds if and only if Π has **no positive local maximum on V**:
- V is compact, so if Π > 0 anywhere, its maximum over V is positive. That maximum is a positive local maximum, and
  the triple there is Fourier-free.
- Conversely, a positive local maximum is a Fourier-free triple.

So F reduces to classifying the positive critical points, or local maxima, of one function on one compact space. That
is exactly the shape of Theorem 1. Two difficulties are known.

- **(i) V is singular, and its defining equations are highly redundant.** The naive Lagrange (Fritz–John) system on
  the 96 equations is vacuous: ker Jᵀ has dimension ≥ 41 everywhere (return P). Do not work with the 96 equations
  directly. Use intrinsic coordinates.
- **(ii) A maximum restricted to a triple component does not make the seed derivatives of R vanish** (return P). So the
  function must live on triple space, not be borrowed from one transition's seed space.

**Suggested coordinates.** The projection V → {Hadamard classes}, sending a triple to the class of H, has finite
fibres, since each H has finitely many companions (§2). Over a strict seed θ, with H = H₊(θ) and the reconstruction
continuous, the triples over θ are finitely many branches K_j(θ). So near a Fourier-free triple, V is a finite union
of branches over a subset T_Ω ⊂ Ω of seeds whose matched completion extends to a triple, of dimension ≤ 4. A local
maximum of Π on V is a local maximum of Π(θ) = Π(H₊(θ), K_j(θ)) along T_Ω. That turns the problem into four real seed
variables plus a finite branch choice, much like Theorem 1.

**What to deliver for the strategy:** one of

- **(a) a classification of the positive local maxima of Π (or of a better function Φ) on V**, showing there are
  none. A better Φ could be any continuous function on V that is positive exactly off V_F, or at least positive on
  every Fourier-free triple, and that is easier to analyse. Examples to consider:
  - the product of the three transitions' g-values over all corners;
  - min over transitions of max over corners of |det|²;
  - a symmetric function of the three transitions' strict-corner R-values.

  Explain the choice.
- **(b) a description of the seed set T_Ω** precise enough to show directly that all of it lies on the known
  Fourier-type sheets. In seed coordinates the known transitions occupy two-dimensional sheets: Fourier-type
  transitions have two of their four corner phases at ±2π/3, and the two-circulant transition has (u, v, u − v, u)
  (`context/PROOF.md`, triples section).
- **(c) a proof that the strategy cannot work as stated**, e.g. an explicit reason why every natural Φ has positive
  critical points off V_F, together with what the obstruction suggests instead.

## 5. Useful identities and tools you may use

- **The corner invariants and side identities:** s, t, r, p, J, W, g = |det B|², η = |perm B|², χ, R = 4(Im Ψ(B))²,
  and the side quadratic for the label z = −Ψ(B)/g: z² − (χ/g)z + η = 0. See `context/PROOF.md` §2.1.
- **The triangle relation** H·(transition)·(transition) = 6√6 I and its corner consequences.
- **The Jacobian identity (J):** det ∂(Gram)/∂(side angles) = ¼ Im Ψ.
- **Return K's signed corner sums**, valid on any orthogonal strip.
- **Return P's four-ray completion algebra and 280-factor pullback of the 400-minor predicate.**
- **The Lean model** (`context/StrictConnected.lean`), if a formal version is ever wanted.

## 6. Deliverables

- `REPORT.md` labelling every claim, including what remains NOT ESTABLISHED; exact verifiers for every finite
  computation, standard library or sympy only, with no network access; `SHA256SUMS`.
- Partial results that are useful on their own:
  - the observation of §4 made rigorous in your chosen coordinates;
  - a proof that V has finitely many components and that each Fourier-free component (if any) is a manifold of a
    stated dimension near a generic point;
  - a classification of the critical points of Φ on any explicit subfamily, e.g. triples whose H lies on a given
    sheet;
  - a numerical study (labelled NUMERICAL) of the largest value of Π, or of your Φ, reachable on V by local ascent
    from the known triples or from random starts, as a sanity check that no positive maximum exists.

## How it will be checked

Exact certificates replayed here; written arguments reviewed. If F is established, the paper's proof becomes
reconstruction + strict-corner coverage + F + E + Tao, and the atlas becomes a cross-check.
