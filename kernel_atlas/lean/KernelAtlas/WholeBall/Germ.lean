import NoFourMUBs.SeedAtlas.Method.WholeBallGerm
import NoFourMUBs.SeedAtlas.Method.WholeBallImplicit
import NoFourMUBs.SeedAtlas.Method.Completion
import KernelAtlas.Seed.Side
import Mathlib.LinearAlgebra.Matrix.ToLinearEquiv

/-!
# The analytic matched-completion germ from nonsingular side roots

This is the local dependency in Z §1. Both sides are selected by the analytic
implicit-function theorem. Strictness and their two signs persist locally;
the existing matched-flatness theorem then applies pointwise.
-/

open Matrix Hadamard6 Complex Filter Topology
open scoped ContDiff Matrix.Norms.Elementwise

noncomputable section

namespace NoFourMUBs.KernelAtlas.WholeBall

open Seed NoFourMUBs.Side NoFourMUBs.Step2 NoFourMUBs.L1
open NoFourMUBs.L1.FlatCircuits NoFourMUBs.SeedAtlas
open NoFourMUBs.SeedAtlas.Method.WholeBall

@[fun_prop] lemma analytic_contDiff_ofReal : ContDiff ℝ ω Complex.ofReal := Complex.ofRealCLM.contDiff
@[fun_prop] lemma analytic_contDiff_re : ContDiff ℝ ω Complex.re := Complex.reCLM.contDiff
@[fun_prop] lemma analytic_contDiff_im : ContDiff ℝ ω Complex.im := Complex.imCLM.contDiff
@[fun_prop] lemma analytic_contDiff_conj : ContDiff ℝ ω (starRingEnd ℂ) := Complex.conjCLE.contDiff

@[fun_prop] lemma analytic_contDiff_sx : ContDiff ℝ ω sx := by
  apply contDiff_pi.mpr
  intro j
  simp only [sx]
  fun_prop

@[fun_prop] lemma analytic_contDiff_sy : ContDiff ℝ ω sy := by
  apply contDiff_pi.mpr
  intro j
  simp only [sy]
  fun_prop

def sideMatrix (φ : Fin 6 → ℝ) : Mat3 := sideMat (sx φ) (sy φ)

@[fun_prop] lemma analytic_contDiff_sideMatrix : ContDiff ℝ ω sideMatrix := by
  apply contDiff_pi.mpr
  intro i
  apply contDiff_pi.mpr
  intro j
  fin_cases i
  · change ContDiff ℝ ω (fun _ : Fin 6 → ℝ => (1 : ℂ))
    exact contDiff_const
  · change ContDiff ℝ ω (fun φ : Fin 6 → ℝ => sx φ j)
    fun_prop
  · change ContDiff ℝ ω (fun φ : Fin 6 → ℝ => sy φ j)
    fun_prop

def phaseSeed (θ : Fin 4 → ℝ) : Fin 4 → ℂ := fun j => Complex.exp (θ j * I)

lemma phaseSeed_eq (θ : Fin 4 → ℝ) : phaseSeed θ = seedVec (seedOf θ) := by
  ext j
  simp [phaseSeed, seedVec, seedOf, Circle.coe_exp]

@[fun_prop] lemma analytic_contDiff_phaseSeed : ContDiff ℝ ω phaseSeed := by
  apply contDiff_pi.mpr
  intro j
  simp only [phaseSeed]
  fun_prop

def sideResidual (v : Bool) (z : (Fin 4 → ℝ) × (Fin 6 → ℝ)) : Fin 6 → ℝ :=
  let ρ := phaseSeed z.1
  if v then sideF (sv ρ) (tv ρ) (rv ρ) z.2 else sideF (sh ρ) (th ρ) (rh ρ) z.2

@[fun_prop] lemma analytic_contDiff_sideF :
    ContDiff ℝ ω (fun z : (ℂ × ℂ × ℂ) × (Fin 6 → ℝ) => sideF z.1.1 z.1.2.1 z.1.2.2 z.2) := by
  have hG : ContDiff ℝ ω
      (fun z : (ℂ × ℂ × ℂ) × (Fin 6 → ℝ) => sideG z.1.1 z.1.2.1 z.1.2.2 z.2) := by
    apply contDiff_pi.mpr
    intro k
    fin_cases k
    · change ContDiff ℝ ω (fun z : (ℂ × ℂ × ℂ) × (Fin 6 → ℝ) => sS (sx z.2) - z.1.1)
      simp only [sS]
      fun_prop
    · change ContDiff ℝ ω (fun z : (ℂ × ℂ × ℂ) × (Fin 6 → ℝ) => sS (sy z.2) - z.1.2.1)
      simp only [sS]
      fun_prop
    · change ContDiff ℝ ω (fun z : (ℂ × ℂ × ℂ) × (Fin 6 → ℝ) => rS (sx z.2) (sy z.2) - z.1.2.2)
      simp only [rS]
      fun_prop
  apply contDiff_pi.mpr
  intro i
  simp only [sideF]
  split_ifs <;> fun_prop

@[fun_prop] lemma analytic_contDiff_sideResidual (v : Bool) : ContDiff ℝ ω (sideResidual v) := by
  have hg : ContDiff ℝ ω (fun ρ : Fin 4 → ℂ =>
      if v then (sv ρ, tv ρ, rv ρ) else (sh ρ, th ρ, rh ρ)) := by
    cases v <;> simp only [Bool.false_eq_true, ↓reduceIte, sh, th, rh, sv, tv, rv] <;> fun_prop
  convert analytic_contDiff_sideF.comp
    ((hg.comp (analytic_contDiff_phaseSeed.comp contDiff_fst)).prodMk contDiff_snd) using 1
  ext z i
  cases v <;> rfl

lemma sideResidual_partial_apply (v : Bool) (θ : Fin 4 → ℝ) (φ u : Fin 6 → ℝ) :
    (fderiv ℝ (sideResidual v) (θ, φ) ∘L
      ContinuousLinearMap.inr ℝ (Fin 4 → ℝ) (Fin 6 → ℝ)) u = (sideJ φ) *ᵥ u := by
  have hd := ((analytic_contDiff_sideResidual v).differentiable (by simp)).differentiableAt.hasFDerivAt
    (x := (θ, φ))
  have hl : HasDerivAt (fun t : ℝ => (θ, φ + t • u)) (0, u) 0 := by
    simpa using (hasDerivAt_const (0 : ℝ) θ).prodMk
      (((hasDerivAt_id (0 : ℝ)).smul_const u).const_add φ)
  have hdl := hd.comp_hasDerivAt_of_eq 0 hl (by simp)
  have he : HasDerivAt (fun t : ℝ => sideResidual v (θ, φ + t • u)) ((sideJ φ) *ᵥ u) 0 := by
    cases v
    · exact hasDerivAt_sideF (sh (phaseSeed θ)) (th (phaseSeed θ)) (rh (phaseSeed θ)) φ u
    · exact hasDerivAt_sideF (sv (phaseSeed θ)) (tv (phaseSeed θ)) (rv (phaseSeed θ)) φ u
  exact hdl.unique he

lemma sideResidual_partial_invertible (v : Bool) (θ : Fin 4 → ℝ) (φ : Fin 6 → ℝ)
    (hd : IsUnit (sideJ φ).det) :
    (fderiv ℝ (sideResidual v) (θ, φ) ∘L
      ContinuousLinearMap.inr ℝ (Fin 4 → ℝ) (Fin 6 → ℝ)).IsInvertible := by
  let e := ((sideJ φ).toLinearEquiv (Pi.basisFun ℝ (Fin 6)) hd).toContinuousLinearEquiv
  refine ⟨e, ?_⟩
  apply ContinuousLinearMap.ext
  intro u
  change (sideJ φ).toLinearEquiv (Pi.basisFun ℝ (Fin 6)) hd u = _
  rw [Matrix.toLinearEquiv_apply, Matrix.toLin_eq_toLin', Matrix.toLin'_apply]
  exact (sideResidual_partial_apply v θ φ u).symm

/-- An invertible side derivative selects a real analytic root at the exact
centre, with the specified phase value. -/
theorem analytic_side_root {v : Bool} {θ0 : Fin 4 → ℝ} {φ0 : Fin 6 → ℝ}
    (h0 : sideResidual v (θ0, φ0) = 0)
    (hi : (fderiv ℝ (sideResidual v) (θ0, φ0) ∘L
      ContinuousLinearMap.inr ℝ (Fin 4 → ℝ) (Fin 6 → ℝ)).IsInvertible) :
    ∃ φ : (Fin 4 → ℝ) → Fin 6 → ℝ, AnalyticAt ℝ φ θ0 ∧ φ θ0 = φ0 ∧
      ∀ᶠ θ in 𝓝 θ0, sideResidual v (θ, φ θ) = 0 := by
  have hc := (analytic_contDiff_sideResidual v).contDiffAt (x := (θ0, φ0))
  have hn : (ω : ℕ∞ω) ≠ 0 := by simp
  exact ⟨hc.implicitFunction hn hi, (hc.contDiffAt_implicitFunction hn hi).analyticAt,
    hc.implicitFunction_apply_self hn hi, by simpa [h0] using hc.eventually_apply_implicitFunction hn hi⟩

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

lemma contDiffAt_det3 {A : E → Mat3} {x : E} (hA : ContDiffAt ℝ ω A x) :
    ContDiffAt ℝ ω (fun y => (A y).det) x := by
  simp only [Matrix.det_fin_three]
  fun_prop

lemma contDiffAt_inv3 {A : E → Mat3} {x : E} (hA : ContDiffAt ℝ ω A x)
    (hd : (A x).det ≠ 0) : ContDiffAt ℝ ω (fun y => (A y)⁻¹) x := by
  have hdet := contDiffAt_det3 hA
  apply contDiffAt_pi.mpr
  intro i
  apply contDiffAt_pi.mpr
  intro j
  simp only [Matrix.inv_def, Ring.inverse_eq_inv', Matrix.smul_apply, smul_eq_mul,
    Matrix.adjugate_fin_three]
  fin_cases i <;> fin_cases j <;> simp only [Matrix.of_apply, Matrix.cons_val_zero',
    Matrix.cons_val_succ'] <;> fun_prop

lemma contDiffAt_completion {A B C : E → Mat3} {x : E}
    (hA : ContDiffAt ℝ ω A x) (hB : ContDiffAt ℝ ω B x) (hC : ContDiffAt ℝ ω C x)
    (hd : (B x).det ≠ 0) : ContDiffAt ℝ ω (fun y => completion (A y) (B y) (C y)) x := by
  have hinv := contDiffAt_inv3 hB hd
  apply contDiffAt_pi.mpr
  intro i
  apply contDiffAt_pi.mpr
  intro j
  rcases i with i | i <;> rcases j with j | j
  · change ContDiffAt ℝ ω (fun y => A y i j) x
    fun_prop
  · change ContDiffAt ℝ ω (fun y => B y i j) x
    fun_prop
  · change ContDiffAt ℝ ω (fun y => C y i j) x
    fun_prop
  · change ContDiffAt ℝ ω (fun y => forcedD (A y) (B y) (C y) i j) x
    simp only [forcedD, Matrix.mul_apply, Matrix.conjTranspose_apply, Matrix.neg_apply, Complex.star_def]
    fun_prop

@[fun_prop] lemma analytic_contDiff_corner :
    ContDiff ℝ ω (fun θ : Fin 4 → ℝ => Em (phaseSeed θ)) := by
  apply contDiff_pi.mpr
  intro i
  apply contDiff_pi.mpr
  intro j
  fin_cases i <;> fin_cases j <;>
    simp only [Em, corner, Matrix.of_apply, Matrix.cons_val_zero', Matrix.cons_val_succ'] <;> fun_prop

def centreCompletion (θ : Fin 4 → ℝ) (φh φv : Fin 6 → ℝ) : Mat6 :=
  completion (Em (phaseSeed θ)) (sideMatrix φh) (sideMatrix φv)ᵀ

/-- Analytic matched completion from the two nonsingular side equations.
All sign and strictness assumptions here are only at the centre. -/
theorem analytic_matched_germ {θ0 : Fin 4 → ℝ} {φh0 φv0 : Fin 6 → ℝ} {o : ℤˣ}
    (hR : 0 < seedR (seedOf θ0))
    (hh0 : sideResidual false (θ0, φh0) = 0)
    (hv0 : sideResidual true (θ0, φv0) = 0)
    (hhI : (fderiv ℝ (sideResidual false) (θ0, φh0) ∘L
      ContinuousLinearMap.inr ℝ (Fin 4 → ℝ) (Fin 6 → ℝ)).IsInvertible)
    (hvI : (fderiv ℝ (sideResidual true) (θ0, φv0) ∘L
      ContinuousLinearMap.inr ℝ (Fin 4 → ℝ) (Fin 6 → ℝ)).IsInvertible)
    (hhSign : 0 < osgn o * (psi (sideMatrix φh0)).im)
    (hvSign : 0 < -osgn o * (psi (sideMatrix φv0)).im) :
    ∃ H : (Fin 4 → ℝ) → Mat6, AnalyticAt ℝ H θ0 ∧
      H θ0 = centreCompletion θ0 φh0 φv0 ∧
      ∀ᶠ θ in 𝓝 θ0, Hadamard6.IsHadamard (H θ) ∧ MatchedO o (seedOf θ) (H θ) := by
  obtain ⟨φh, hha, hhc, hhz⟩ := analytic_side_root hh0 hhI
  obtain ⟨φv, hva, hvc, hvz⟩ := analytic_side_root hv0 hvI
  have hBa : ContDiffAt ℝ ω (fun θ => sideMatrix (φh θ)) θ0 :=
    analytic_contDiff_sideMatrix.contDiffAt.comp θ0 hha.contDiffAt
  have hVa : ContDiffAt ℝ ω (fun θ => sideMatrix (φv θ)) θ0 :=
    analytic_contDiff_sideMatrix.contDiffAt.comp θ0 hva.contDiffAt
  have hCa : ContDiffAt ℝ ω (fun θ => (sideMatrix (φv θ))ᵀ) θ0 := by
    apply contDiffAt_pi.mpr
    intro i
    apply contDiffAt_pi.mpr
    intro j
    change ContDiffAt ℝ ω (fun θ => sideMatrix (φv θ) j i) θ0
    fun_prop
  have hd : (sideMatrix (φh θ0)).det ≠ 0 := by
    rw [hhc]
    apply isUnit_iff_ne_zero.mp
    apply det_ne_of_sig
    intro hz
    rw [psi_eq, Complex.neg_im, hz] at hhSign
    simp at hhSign
  let H := fun θ => centreCompletion θ (φh θ) (φv θ)
  refine ⟨H, (contDiffAt_completion analytic_contDiff_corner.contDiffAt hBa hCa hd).analyticAt,
    by simp only [H, hhc, hvc], ?_⟩
  have hstrict : ∀ᶠ θ in 𝓝 θ0, 0 < seedR (seedOf θ) :=
    (continuous_seedR.comp continuous_seedOf).continuousAt (lt_mem_nhds hR)
  have hbs : ∀ᶠ θ in 𝓝 θ0, 0 < osgn o * (psi (sideMatrix (φh θ))).im := by
    have hc : ContinuousAt (fun θ => osgn o * (psi (sideMatrix (φh θ))).im) θ0 := by
      exact continuousAt_const.mul
        (Complex.continuous_im.continuousAt.comp (continuous_psi.continuousAt.comp hBa.continuousAt))
    exact hc (lt_mem_nhds (by simpa [hhc] using hhSign))
  have hvs : ∀ᶠ θ in 𝓝 θ0, 0 < -osgn o * (psi (sideMatrix (φv θ))).im := by
    have hc : ContinuousAt (fun θ => -osgn o * (psi (sideMatrix (φv θ))).im) θ0 := by
      exact continuousAt_const.mul
        (Complex.continuous_im.continuousAt.comp (continuous_psi.continuousAt.comp hVa.continuousAt))
    exact hc (lt_mem_nhds (by simpa [hvc] using hvSign))
  filter_upwards [hstrict, hhz, hvz, hbs, hvs] with θ hθ hhz hvz hbs hvs
  simp only [sideResidual, Bool.false_eq_true, ↓reduceIte, phaseSeed_eq] at hhz hvz
  obtain ⟨hhs, hht, hhr⟩ := sideF_zero hhz
  obtain ⟨hvs', hvt, hvr⟩ := sideF_zero hvz
  have hc := Method.matchedO_of_certified_sides hθ
      (fun j => normSq_exp_real_mul_I _) (fun j => normSq_exp_real_mul_I _)
      (fun j => normSq_exp_real_mul_I _) (fun j => normSq_exp_real_mul_I _)
      hhs hht hhr hvs' hvt hvr hbs hvs
  change Hadamard6.IsHadamard
    (completion (Em (phaseSeed θ)) (sideMat (sx (φh θ)) (sy (φh θ)))
      (sideMat (sx (φv θ)) (sy (φv θ)))ᵀ) ∧ _
  rw [phaseSeed_eq]
  exact hc

/-- Z's phase germ, now from the concrete side Jacobians and the exact centre
completion. No analyticity or existence of a phase family is assumed. -/
theorem local_matched_phase_germ {θ0 : Fin 4 → ℝ} {φh0 φv0 : Fin 6 → ℝ}
    {q0 : RMat6} {o : ℤˣ}
    (hR : 0 < seedR (seedOf θ0))
    (hh0 : sideResidual false (θ0, φh0) = 0)
    (hv0 : sideResidual true (θ0, φv0) = 0)
    (hhI : IsUnit (sideJ φh0).det) (hvI : IsUnit (sideJ φv0).det)
    (hhSign : 0 < osgn o * (psi (sideMatrix φh0)).im)
    (hvSign : 0 < -osgn o * (psi (sideMatrix φv0)).im)
    (h0 : centreCompletion θ0 φh0 φv0 = phaseMat q0)
    (hL : cornerTheta q0 1 1 = θ0) :
    ∃ q : (Fin 4 → ℝ) → RMat6, AnalyticAt ℝ q θ0 ∧ q θ0 = q0 ∧
      ∀ᶠ θ in 𝓝 θ0, IsHorizontal (q θ - q0) ∧ cornerTheta (q θ) 1 1 = θ ∧
        Hadamard6.IsHadamard (phaseMat (q θ)) ∧ RepO o (seedOf θ) (phaseMat (q θ)) := by
  obtain ⟨H, hHa, hH0, hHm⟩ := analytic_matched_germ hR hh0 hv0
    (sideResidual_partial_invertible false θ0 φh0 hhI)
    (sideResidual_partial_invertible true θ0 φv0 hvI) hhSign hvSign
  exact local_phase_germ hHa (hH0.trans h0) hL hHm

end NoFourMUBs.KernelAtlas.WholeBall
