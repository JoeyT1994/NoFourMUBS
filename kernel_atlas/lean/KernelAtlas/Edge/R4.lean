import KernelAtlas.Edge.R4Deriv

/-!
# Positivity of the fourth-angle discriminant derivative

`dRT` is the derivative of the actual seed discriminant. Its positive real enclosure on a common
angle interval therefore gives the strict monotonicity used by `equal_fourth`.
-/

open Complex NoFourMUBs.SeedAtlas NoFourMUBs.Step2

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed L1 L1.FlatCircuits

set_option maxHeartbeats 2000000 in
lemma r4C_eq (a b c d : ℂ) :
    r4C a b c d = (gR (-(1 + a + b)) (-(1 + c + d))
      (-(1 + c * (starRingEnd ℂ) a + d * (starRingEnd ℂ) b)) : ℂ) := by
  simp only [r4C, gR, gG, gEta, gChi, gPs, gX, Complex.ofReal_sub, Complex.ofReal_add,
    Complex.ofReal_mul, Complex.ofReal_pow, Complex.ofReal_ofNat, cast_gJ, cast_normSq,
    map_mul, Complex.conj_conj]
  simp only [pow_two, mul_assoc]

lemma r4C_edgeR (a : Fin 3 → ℝ) (t : ℝ) :
    r4C (exp ((a 0 : ℂ) * I)) (exp ((a 1 : ℂ) * I)) (exp ((a 2 : ℂ) * I)) (exp ((t : ℂ) * I)) =
      (edgeR a t : ℂ) := by
  rw [r4C_eq, edgeR, seedR_eq']
  rfl

/-- The checked circuit is the fourth-angle derivative of the seed discriminant. -/
theorem hasDerivAt_edgeR (a : Fin 3 → ℝ) (t : ℝ) :
    HasDerivAt (edgeR a)
      (dR4C (exp ((a 0 : ℂ) * I)) (exp ((a 1 : ℂ) * I)) (exp ((a 2 : ℂ) * I)) (exp ((t : ℂ) * I))).re t := by
  have H := hasDerivAt_r4C (exp ((a 0 : ℂ) * I)) (exp ((a 1 : ℂ) * I)) (exp ((a 2 : ℂ) * I)) t
  have H' : HasDerivAt (fun z : ℝ => (edgeR a z : ℂ))
      (dR4C (exp ((a 0 : ℂ) * I)) (exp ((a 1 : ℂ) * I)) (exp ((a 2 : ℂ) * I)) (exp ((t : ℂ) * I))) t := by
    simpa only [r4C_edgeR] using H
  exact Complex.reCLM.hasFDerivAt.comp_hasDerivAt t H'

lemma posOK_sound {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {T : CT} {z : ℂ}
    (hT : T.Has u z) (hok : posOK h T = true) : 0 < z.re := by
  have hk : ((Lsum h (re T) + (re T).ρ : ℕ) : ℤ) < ((re T).cg 0).1 := of_decide_eq_true hok
  simpa using sign_of_model hu (has_re hT) rfl (o := 1) (Or.inl rfl) (by simpa using hk)

/-- A positive derivative circuit on a convex angle interval makes `R` strictly increasing there. -/
theorem strictMonoOn_edgeR {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u)
    {A B C S : CT} {a : Fin 3 → ℝ} {J : Set ℝ} (hJ : Convex ℝ J)
    (hA : A.Has u (exp ((a 0 : ℂ) * I))) (hB : B.Has u (exp ((a 1 : ℂ) * I)))
    (hC : C.Has u (exp ((a 2 : ℂ) * I))) (hS : ∀ t ∈ J, S.Has u (t : ℂ))
    (hexp : expOK S nT = true) (hpos : posOK h (dRT h A B C (expI h nT S)) = true) :
    StrictMonoOn (edgeR a) J := by
  refine strictMonoOn_of_hasDerivWithinAt_pos hJ
    (fun t _ => (hasDerivAt_edgeR a t).continuousAt.continuousWithinAt)
    (fun t _ => (hasDerivAt_edgeR a t).hasDerivWithinAt) ?_
  intro t ht
  exact posOK_sound hu (has_dRT hu hA hB hC (has_expI hu hexp (hS t (interior_subset ht)))) hpos

end NoFourMUBs.KernelAtlas.Edge
