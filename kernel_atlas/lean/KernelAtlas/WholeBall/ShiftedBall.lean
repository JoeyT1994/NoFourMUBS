import KernelAtlas.WholeBall.CheckedBall

/-! Exact translations allow arbitrary rational input seed angles while reusing
Z's theorem at a dyadic centre. The requested ball is contained in a slightly
larger certified ball; the recorded centre is translated by the stored frame.
No rounding of the requested angles or radius is part of the conclusion. -/

open Matrix Hadamard6 NoFourMUBs NoFourMUBs.SeedAtlas NoFourMUBs.Step2
open NoFourMUBs.KernelAtlas.Seed
set_option backward.isDefEq.respectTransparency false

namespace NoFourMUBs.KernelAtlas.WholeBall

def centreThetaQ (B : BallD) : Fin 4 → ℚ := fun k => gridQ (gi B.th0 k)

def offsetColumn (v : Fin 4 → ℚ) : Matrix (Fin 4) (Fin 1) ℚ := fun k _ => v k

noncomputable def realVector (v : Fin 4 → ℚ) : Fin 4 → ℝ := fun k => v k

def shiftCheck (B : BallD) (M : Matrix (Fin 4) (Fin 4) ℚ)
    (Pc P : Matrix (Fin 36) (Fin 1) ℚ) (V : Matrix (Fin 36) (Fin 4) ℚ)
    (theta offset : Fin 4 → ℚ) (r R sigma : ℚ) : Bool :=
  decide (centreThetaQ B + M *ᵥ offset = theta ∧
    Pc = P - V * offsetColumn offset ∧
    (∑ k, offset k ^ 2) ≤ sigma ^ 2 ∧ 0 ≤ sigma ∧ 0 < r ∧ r + sigma ≤ R)

lemma wnorm_add_le (w v : Fin 4 → ℝ) : wnorm (w + v) ≤ wnorm w + wnorm v := by
  simp only [wnorm_eq_euclidean]
  exact norm_add_le (WithLp.toLp 2 w : EuclideanSpace ℝ (Fin 4)) (WithLp.toLp 2 v)

lemma tang_add_vector (V : Fin 4 → RMat6) (w v : Fin 4 → ℝ) :
    tang V (w + v) = tang V w + tang V v := by
  simp [tang, add_smul, Finset.sum_add_distrib]

lemma recordPhase_shift (P : Matrix (Fin 36) (Fin 1) ℚ)
    (V : Matrix (Fin 36) (Fin 4) ℚ) (v : Fin 4 → ℚ) :
    recordPhase (P - V * offsetColumn v) =
      recordPhase P - tang (phaseFrame (realMatrix V)) (realVector v) := by
  rw [phaseFrame_tang]
  ext i j
  simp [recordPhase, phaseMap, unflatPhase, offsetColumn, realVector, realMatrix,
    Matrix.mulVec, Matrix.mul_apply, dotProduct]

/-- A direct application of the certified ball theorem to `w + offset`.
The only additional obligations are exact finite-dimensional identities and
one norm bound for the translation. -/
theorem shiftedWholeBallCheck_sound {B : BallD} {D : BoxD}
    {M : Matrix (Fin 4) (Fin 4) ℚ} {Pc P : Matrix (Fin 36) (Fin 1) ℚ}
    {V : Matrix (Fin 36) (Fin 4) ℚ} {theta offset : Fin 4 → ℚ}
    {r sigma : ℚ} {C : WholeBallData} {o : ℤˣ} (ho : B.o = (o : ℤ))
    (hc : wholeBallCheck B D M Pc V C = true)
    (hs : shiftCheck B M Pc P V theta offset r C.scalar.bounds.r sigma = true) :
    ∀ w : Fin 4 → ℝ, wnorm w ≤ (r : ℝ) →
      0 < seedR (seedOf (realVector theta + realMatrix M *ᵥ w)) ∧
      ∃ Q : RMat6, ∃ N : Matrix I6 I6 ℤ,
        RepO o (seedOf (realVector theta + realMatrix M *ᵥ w)) (phaseMat Q) ∧
        frob (Q - recordPhase P - tang (phaseFrame (realMatrix V)) w - wind N) ≤ (C.scalar.bounds.n : ℝ) := by
  have hs' := of_decide_eq_true hs
  change _ ∧ _ ∧ _ ∧ _ ∧ _ ∧ _ at hs'
  obtain ⟨hθ, hP, hv, hσ, _, hr⟩ := hs'
  have hσ' : (0 : ℝ) ≤ sigma := by exact_mod_cast hσ
  have hv' : wnorm (realVector offset) ≤ (sigma : ℝ) := by
    rw [wnorm_eq_euclidean]
    apply (sq_le_sq₀ (norm_nonneg _) hσ').mp
    rw [EuclideanSpace.real_norm_sq_eq]
    change (∑ k, (offset k : ℝ) ^ 2) ≤ (sigma : ℝ) ^ 2
    exact_mod_cast hv
  have hθ' : th0R B + realMatrix M *ᵥ realVector offset = realVector theta := by
    ext k
    have hk := congrFun hθ k
    have hk' : (centreThetaQ B k : ℝ) + (∑ j, (M k j : ℝ) * (offset j : ℝ)) = (theta k : ℝ) := by
      exact_mod_cast hk
    simpa only [centreThetaQ, gridQ_real, th0R, realMatrix, Matrix.map_apply,
      realVector, Pi.add_apply, Matrix.mulVec, dotProduct] using hk'
  intro w hw
  have hwp : wnorm (w + realVector offset) ≤ (C.scalar.bounds.r : ℝ) := by
    apply (wnorm_add_le w _).trans
    apply (add_le_add hw hv').trans
    exact_mod_cast hr
  obtain ⟨hR, Q, N, hrep, hn⟩ := wholeBallCheck_sound ho hc (w + realVector offset) hwp
  have he : th0R B + realMatrix M *ᵥ (w + realVector offset) =
      realVector theta + realMatrix M *ᵥ w := by
    rw [Matrix.mulVec_add, ← hθ']
    abel
  rw [he] at hR hrep
  refine ⟨hR, Q, N, hrep, ?_⟩
  rw [hP, recordPhase_shift, tang_add_vector] at hn
  convert hn using 1
  congr 1
  abel

end NoFourMUBs.KernelAtlas.WholeBall
