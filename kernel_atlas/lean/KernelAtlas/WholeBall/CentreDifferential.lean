import KernelAtlas.WholeBall.CentreMatrix
import KernelAtlas.WholeBall.Germ

/-! The enclosed centre matrix is the derivative of the actual thirty row-Gram
residuals in the phase coordinates used by Z. -/

open Matrix Complex Hadamard6 NoFourMUBs.SeedAtlas
open NoFourMUBs.KernelAtlas.Seed
open scoped Matrix.Norms.Elementwise ContDiff

namespace NoFourMUBs.KernelAtlas.WholeBall

noncomputable def flatPhase (Q : NoFourMUBs.RMat6) (b : Fin 36) : ℝ :=
  Q (phaseIndex (phaseRow b)) (phaseIndex (phaseCol b))

lemma sum_phase_grid {α : Type*} [AddCommMonoid α] (f : Fin 6 → Fin 6 → α) :
    (∑ b : Fin 36, f (phaseRow b) (phaseCol b)) = ∑ i, ∑ j, f i j := by
  change (∑ b : Fin (6 * 6), f ((finProdFinEquiv.symm b).1) ((finProdFinEquiv.symm b).2)) = _
  exact (Equiv.sum_comp finProdFinEquiv.symm (fun p : Fin 6 × Fin 6 => f p.1 p.2)).trans
    (Fintype.sum_prod_type _)

lemma centreJacobian_apply (H : Mat6) (V : NoFourMUBs.RMat6) (a : Fin 30) :
    (centreJacobian H *ᵥ flatPhase V) a =
      ∑ k : Fin 6,
        (if a.val < 15 then
          (I * (H (phaseIndex (gramPair (jacPair a)).1) (phaseIndex k) *
            star (H (phaseIndex (gramPair (jacPair a)).2) (phaseIndex k)))).re
        else (I * (H (phaseIndex (gramPair (jacPair a)).1) (phaseIndex k) *
            star (H (phaseIndex (gramPair (jacPair a)).2) (phaseIndex k)))).im) *
          (V (phaseIndex (gramPair (jacPair a)).1) (phaseIndex k) -
            V (phaseIndex (gramPair (jacPair a)).2) (phaseIndex k)) := by
  let c : Fin 6 → ℝ := fun k => if a.val < 15 then
    (I * (H (phaseIndex (gramPair (jacPair a)).1) (phaseIndex k) *
      star (H (phaseIndex (gramPair (jacPair a)).2) (phaseIndex k)))).re
    else (I * (H (phaseIndex (gramPair (jacPair a)).1) (phaseIndex k) *
      star (H (phaseIndex (gramPair (jacPair a)).2) (phaseIndex k)))).im
  change (∑ b : Fin 36, (jacSign a b : ℝ) * c (phaseCol b) *
    V (phaseIndex (phaseRow b)) (phaseIndex (phaseCol b))) = _
  simp only [jacSign, Int.cast_sub, Int.cast_ite, Int.cast_one, Int.cast_zero]
  rw [sum_phase_grid (fun i k => ((if i = (gramPair (jacPair a)).1 then (1 : ℝ) else 0) -
    (if i = (gramPair (jacPair a)).2 then 1 else 0)) * c k * V (phaseIndex i) (phaseIndex k)),
    Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro k _
  simp only [sub_mul, ite_mul, one_mul, zero_mul, Finset.sum_sub_distrib]
  simp [c]
  split_ifs <;> ring

noncomputable def phaseGram (Q : NoFourMUBs.RMat6) (p : Fin 15) : ℂ :=
  ∑ k : Fin 6, Complex.exp (((Q (phaseIndex (gramPair p).1) (phaseIndex k) -
    Q (phaseIndex (gramPair p).2) (phaseIndex k) : ℝ) : ℂ) * I)

noncomputable def phaseResidual (Q : NoFourMUBs.RMat6) (a : Fin 30) : ℝ :=
  if a.val < 15 then (phaseGram Q (jacPair a)).re else (phaseGram Q (jacPair a)).im

lemma phaseGram_entry (Q : NoFourMUBs.RMat6) (i j k : I6) :
    Complex.exp (((Q i k - Q j k : ℝ) : ℂ) * I) =
      NoFourMUBs.phaseMat Q i k * star (NoFourMUBs.phaseMat Q j k) := by
  simp only [NoFourMUBs.phaseMat, Matrix.of_apply, Complex.star_def, ← Complex.exp_conj,
    map_mul, Complex.conj_ofReal, Complex.conj_I, ← Complex.exp_add]
  congr 1
  push_cast
  ring

@[fun_prop] lemma contDiff_phaseResidual : ContDiff ℝ ω phaseResidual := by
  apply contDiff_pi.mpr
  intro a
  unfold phaseResidual phaseGram
  split_ifs <;> fun_prop

lemma hasDerivAt_phaseGram (Q V : NoFourMUBs.RMat6) (p : Fin 15) :
    HasDerivAt (fun t : ℝ => phaseGram (Q + t • V) p)
      (∑ k : Fin 6, (I * (NoFourMUBs.phaseMat Q (phaseIndex (gramPair p).1) (phaseIndex k) *
        star (NoFourMUBs.phaseMat Q (phaseIndex (gramPair p).2) (phaseIndex k)))) *
        (V (phaseIndex (gramPair p).1) (phaseIndex k) -
          V (phaseIndex (gramPair p).2) (phaseIndex k))) 0 := by
  unfold phaseGram
  apply HasDerivAt.fun_sum
  intro k _
  have hh := hasDerivAt_cexp_line
    (Q (phaseIndex (gramPair p).1) (phaseIndex k) - Q (phaseIndex (gramPair p).2) (phaseIndex k))
    (V (phaseIndex (gramPair p).1) (phaseIndex k) - V (phaseIndex (gramPair p).2) (phaseIndex k))
  rw [phaseGram_entry] at hh
  convert! hh using 1
  · ext t
    congr 1
    simp only [Matrix.add_apply, Matrix.smul_apply, smul_eq_mul]
    push_cast
    ring
  · push_cast
    ring

theorem hasDerivAt_phaseResidual (Q V : NoFourMUBs.RMat6) :
    HasDerivAt (fun t : ℝ => phaseResidual (Q + t • V))
      (centreJacobian (NoFourMUBs.phaseMat Q) *ᵥ flatPhase V) 0 := by
  apply hasDerivAt_pi.mpr
  intro a
  rw [centreJacobian_apply]
  have hh := hasDerivAt_phaseGram Q V (jacPair a)
  unfold phaseResidual
  split_ifs with h
  · convert! (Complex.reCLM.hasFDerivAt.comp_hasDerivAt (0 : ℝ) hh) using 1
    simp only [Complex.reCLM_apply, ← Complex.ofReal_sub,
        Complex.re_sum, Complex.re_mul_ofReal]
  · convert! (Complex.imCLM.hasFDerivAt.comp_hasDerivAt (0 : ℝ) hh) using 1
    simp only [Complex.imCLM_apply, ← Complex.ofReal_sub,
        Complex.im_sum, Complex.im_mul_ofReal]

end NoFourMUBs.KernelAtlas.WholeBall
