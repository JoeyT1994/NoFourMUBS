import NoFourMUBs.Step4

/-!
# Boundary transfers from a certified boundary cover (Lemma 4.1)

For a Record `l` of the atlas, a `BoundaryCover A l` is a family of `η`-boxes in the tangent frame. Each box carries:
- a target Record;
- a signed permutation `A` (row and column permutations, transposition, sign);
- an integer winding `N`.

The certified facts:
* **cover**: every `η` with `‖η‖ ≤ r_H` and `‖Tη‖² ≥ R² − n²` lies in some box (these are the possible tangent
  coordinates of a boundary point, since `‖δ‖² = ‖Tη‖² + ‖ν‖²` and `‖ν‖ ≤ n`);
* **transfer**: on each box, `‖h(A P + 2πN − P_t) + h(A Tη)‖ + n < R_t` (Lemma 4.1's hypothesis).

`boundaryTransfers_of_covers`: covers for every Record give `BoundaryTransfers A`.
-/

open Matrix Hadamard6

namespace NoFourMUBs

/-- The tangent radius `r_H = gR` and the normal bound `n` of a Record. -/
noncomputable def RecordCert.rH (C : RecordCert) : ℝ := C.g * C.R
noncomputable def RecordCert.n (C : RecordCert) : ℝ :=
  nroot C.σ (C.e0 + C.j1 * (C.g * C.R) + Real.sqrt 3 * C.lam * (C.g * C.R) ^ 2)

structure BoundaryCover {ι : Type*} (A : ι → RecordCert) (l : ι) where
  β : Type
  box : β → Set (Fin 4 → ℝ)
  tgt : β → ι
  perm : β → SignedPerm
  wind : β → Matrix I6 I6 ℤ
  hcover : ∀ η : Fin 4 → ℝ, Real.sqrt (∑ k, η k ^ 2) ≤ (A l).rH →
    (A l).R ^ 2 - (A l).n ^ 2 ≤ sumsq (∑ k, η k • (A l).T k) → ∃ b, η ∈ box b
  htransfer : ∀ b, ∀ η ∈ box b,
    frob (hor ((perm b).act (A l).P + (2 * Real.pi) • (wind b).map (Int.cast : ℤ → ℝ) - (A (tgt b)).P) +
      hor ((perm b).act (∑ k, η k • (A l).T k))) + (A l).n < (A (tgt b)).R

theorem boundaryTransfers_of_covers {ι : Type*} (A : ι → RecordCert) (hc : ∀ l, Nonempty (BoundaryCover A l)) :
    BoundaryTransfers A := by
  intro l δ hδh hR hH
  obtain ⟨B⟩ := hc l
  obtain ⟨η, ν, hδ, hη, hν, hsplit⟩ := (A l).decomp hδh hR.le hH
  have hν' : frob ν ≤ (A l).n := hν
  have hshell : (A l).R ^ 2 - (A l).n ^ 2 ≤ sumsq (∑ k, η k • (A l).T k) := by
    have h1 : sumsq δ = (A l).R ^ 2 := by rw [← hR, frob_eq_sqrt, Real.sq_sqrt (sumsq_nonneg δ)]
    have h2 : sumsq ν ≤ (A l).n ^ 2 := by
      have := pow_le_pow_left₀ (frob_nonneg ν) hν' 2
      rwa [frob_eq_sqrt, Real.sq_sqrt (sumsq_nonneg ν)] at this
    linarith
  obtain ⟨b, hb⟩ := B.hcover η hη hshell
  obtain ⟨G, hG, δ', hδ', hlt, hGK⟩ := transfer (B.perm b) (B.wind b) hν' (B.htransfer b η hb)
  refine ⟨G, B.tgt b, δ', ?_, hδ', hlt, hGK⟩
  rw [hδ, ← add_assoc]; exact hG

end NoFourMUBs
