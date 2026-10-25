import KernelAtlas.Seed.C1Box

/-!
# The augmented side system of the edge chart (`proof/seed_atlas/SPEC.md` §10, return U eq. 20)

The edge chart `F6-012` has parameters `p = (u₁, u₂, u₃, y)`.  A side (horizontal `v = false`, vertical `v = true`)
has seven unknowns `ξ = (θ₄, φ₀, …, φ₅)` (absolute phases): with the seed `θ = (θ₁, θ₂, θ₃, θ₄)` (`θ₁₋₃ = a`), the
side `(1; e^{iφ₀₋₂}; e^{iφ₃₋₅})` realises the Gram data of `θ` (`G_h` or `G_v`, as in the seed C1) and
`Im Ψ(side) ± y/2 = 0` (`+` horizontal, `−` vertical: the vertical side of the matched completion carries the
conjugate label).  The vertical system is the SPEC's system for `Eᵀ` at `(u₁, u₃, u₂, −y)`, written in `E`'s corner
order (`G_h(Eᵀ) = G_v(E)`).

`edgeF v a y ξ ∈ ℝ⁷` is the residual (the six real Gram residuals of `sideF`, then the label equation), `edgeJ` its
Jacobian in `ξ`, and `hasDerivAt_edgeF` the directional derivative (the `hF` of `Method.krawczyk`).  The `θ₄`
column is `∂(−G)/∂θ₄ = (0, iρ₃, iρ₃ ρ̄₁)` (horizontal) or `(0, iρ₃, iρ₃ ρ̄₂)` (vertical); the label row is
`Im ∂Ψ/∂φ_m` with `∂Ψ/∂φ_m = i (P_m h² c + 2 π h D_m c − Ψ)`, `π = piS`, `h = hS`, `c = conj Π x_j y_j`, and
`P_m`, `D_m` the terms of `π`, `h` containing the `m`-th entry.
-/

open Complex NoFourMUBs.Side NoFourMUBs.Step2 NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed L1.FlatCircuits

/-- The seed `(a₀, a₁, a₂, t)`. -/
def th4 (a : Fin 3 → ℝ) (t : ℝ) : Fin 4 → ℝ := ![a 0, a 1, a 2, t]

/-- `ρ = e^{iθ}` of the seed `(a, t)`. -/
def rho4 (a : Fin 3 → ℝ) (t : ℝ) : Fin 4 → ℂ := L1.seedVec (seedOf (th4 a t))

lemma rho4_apply (a : Fin 3 → ℝ) (t : ℝ) (k : Fin 4) :
    rho4 a t k = Complex.exp ((th4 a t k : ℂ) * I) := by
  simp [rho4, L1.seedVec, seedOf, Circle.coe_exp]

/-- The Gram data of a side (`v = false` horizontal, `true` vertical). -/
def gs (v : Bool) (ρ : Fin 4 → ℂ) : ℂ := if v then sv ρ else sh ρ
def gt (v : Bool) (ρ : Fin 4 → ℂ) : ℂ := if v then tv ρ else th ρ
def gr (v : Bool) (ρ : Fin 4 → ℂ) : ℂ := if v then rv ρ else rh ρ

/-- The side phases `φ = ξ₁₋₆`. -/
def phiOf (ξ : Fin 7 → ℝ) : Fin 6 → ℝ := fun j => ξ j.succ

/-- `Ψ` of the side with phases `φ`. -/
def psiS (φ : Fin 6 → ℝ) : ℂ := psi (L1.sideMat (sx φ) (sy φ))

/-- The label sign: `+1` horizontal, `−1` vertical. -/
def lsgn (v : Bool) : ℝ := if v then -1 else 1

/-- **The residual of the augmented system.** -/
def edgeF (v : Bool) (a : Fin 3 → ℝ) (y : ℝ) (ξ : Fin 7 → ℝ) : Fin 7 → ℝ := fun i =>
  if h : i.1 < 6 then
    sideF (gs v (rho4 a (ξ 0))) (gt v (rho4 a (ξ 0))) (gr v (rho4 a (ξ 0))) (phiOf ξ) ⟨i.1, h⟩
  else (psiS (phiOf ξ)).im + lsgn v * y / 2

/-- A zero of the residual: the Gram equations and the label `Im Ψ = −(±y)/2`. -/
theorem edgeF_zero {v : Bool} {a : Fin 3 → ℝ} {y : ℝ} {ξ : Fin 7 → ℝ} (h : edgeF v a y ξ = 0) :
    sS (sx (phiOf ξ)) = gs v (rho4 a (ξ 0)) ∧ sS (sy (phiOf ξ)) = gt v (rho4 a (ξ 0)) ∧
      rS (sx (phiOf ξ)) (sy (phiOf ξ)) = gr v (rho4 a (ξ 0)) ∧ (psiS (phiOf ξ)).im = -(lsgn v * y) / 2 := by
  have hside : sideF (gs v (rho4 a (ξ 0))) (gt v (rho4 a (ξ 0))) (gr v (rho4 a (ξ 0))) (phiOf ξ) = 0 := by
    funext i
    have := congrFun h ⟨i.1, by omega⟩
    simp only [edgeF, dif_pos i.2, Pi.zero_apply] at this
    exact this
  obtain ⟨hs, ht, hr⟩ := sideF_zero hside
  refine ⟨hs, ht, hr, ?_⟩
  have := congrFun h 6
  simp only [edgeF, show ¬ ((6 : Fin 7) : ℕ) < 6 by decide, dif_neg, not_false_eq_true, Pi.zero_apply] at this
  linarith

/-! ### The derivative of `Ψ` -/

/-- The terms of `piS` containing entry `m` (`x_m`, or `y_{m−3}`). -/
def PmS (x y : Fin 3 → ℂ) (m : Fin 6) : ℂ :=
  match m with
  | 0 => x 0 * (y 1 + y 2)
  | 1 => x 1 * (y 0 + y 2)
  | 2 => x 2 * (y 0 + y 1)
  | 3 => y 0 * (x 1 + x 2)
  | 4 => y 1 * (x 0 + x 2)
  | _ => y 2 * (x 0 + x 1)

/-- The terms of `hS` containing entry `m`. -/
def DmS (x y : Fin 3 → ℂ) (m : Fin 6) : ℂ :=
  match m with
  | 0 => x 0 * (y 1 - y 2)
  | 1 => x 1 * (y 2 - y 0)
  | 2 => x 2 * (y 0 - y 1)
  | 3 => y 0 * (x 2 - x 1)
  | 4 => y 1 * (x 0 - x 2)
  | _ => y 2 * (x 1 - x 0)

/-- `conj Π x_j y_j`. -/
def cS (x y : Fin 3 → ℂ) : ℂ := (starRingEnd ℂ) (x 0 * y 0 * (x 1 * y 1) * (x 2 * y 2))

/-- `∂Ψ/∂φ_m`. -/
def dpsi (φ : Fin 6 → ℝ) (m : Fin 6) : ℂ :=
  I * (PmS (sx φ) (sy φ) m * (hS (sx φ) (sy φ) * hS (sx φ) (sy φ)) * cS (sx φ) (sy φ) +
    2 * piS (sx φ) (sy φ) * hS (sx φ) (sy φ) * DmS (sx φ) (sy φ) m * cS (sx φ) (sy φ) -
    piS (sx φ) (sy φ) * (hS (sx φ) (sy φ) * hS (sx φ) (sy φ)) * cS (sx φ) (sy φ))

lemma psiS_eq (φ : Fin 6 → ℝ) :
    psiS φ = piS (sx φ) (sy φ) * (hS (sx φ) (sy φ) * hS (sx φ) (sy φ)) * cS (sx φ) (sy φ) := by
  rw [psiS, psi_sideMat]; rfl

/-- The entries along a line, as `x_j(τ)`, `y_j(τ)` with derivative `i v x_j`. -/
lemma hasDerivAt_sxy (φ w : Fin 6 → ℝ) :
    (∀ j : Fin 3, HasDerivAt (fun τ : ℝ => sx (φ + τ • w) j) (I * w ⟨j.1, by omega⟩ * sx φ j) 0) ∧
      ∀ j : Fin 3, HasDerivAt (fun τ : ℝ => sy (φ + τ • w) j) (I * w ⟨j.1 + 3, by omega⟩ * sy φ j) 0 :=
  ⟨hasDerivAt_sx φ w, hasDerivAt_sy φ w⟩

theorem hasDerivAt_psiS (φ w : Fin 6 → ℝ) :
    HasDerivAt (fun τ : ℝ => psiS (φ + τ • w)) (∑ m, dpsi φ m * w m) 0 := by
  obtain ⟨hx, hy⟩ := hasDerivAt_sxy φ w
  -- `piS`, `hS`, `cS` along the line
  have hP : HasDerivAt (fun τ : ℝ => piS (sx (φ + τ • w)) (sy (φ + τ • w)))
      (I * ∑ m, (w m : ℂ) * PmS (sx φ) (sy φ) m) 0 := by
    have := ((((((hx 0).mul (hy 1)).add ((hx 0).mul (hy 2))).add ((hx 1).mul (hy 0))).add
      ((hx 1).mul (hy 2))).add ((hx 2).mul (hy 0))).add ((hx 2).mul (hy 1))
    refine (this.congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun τ => ?_)
    · simp only [Fin.sum_univ_six, PmS]; simp only [zero_smul, add_zero, Fin.isValue, Fin.val_zero, Fin.val_one, Fin.val_two, Nat.reduceAdd, zero_add, Fin.reduceFinMk, Pi.mul_apply]; ring
    · simp [piS]
  have hH : HasDerivAt (fun τ : ℝ => hS (sx (φ + τ • w)) (sy (φ + τ • w)))
      (I * ∑ m, (w m : ℂ) * DmS (sx φ) (sy φ) m) 0 := by
    have := (((((((hx 1).mul (hy 2)).sub ((hx 2).mul (hy 1))).sub ((hx 0).mul (hy 2))).add
      ((hx 2).mul (hy 0))).add ((hx 0).mul (hy 1))).sub ((hx 1).mul (hy 0)))
    refine (this.congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun τ => ?_)
    · simp only [Fin.sum_univ_six, DmS]; simp only [zero_smul, add_zero, Fin.isValue, Fin.val_zero, Fin.val_one, Fin.val_two, Nat.reduceAdd, zero_add, Fin.reduceFinMk, Pi.mul_apply]; ring
    · simp [hS]
  have hp := (((hx 0).mul (hy 0)).mul ((hx 1).mul (hy 1))).mul ((hx 2).mul (hy 2))
  have hp' : HasDerivAt (fun τ : ℝ => sx (φ + τ • w) 0 * sy (φ + τ • w) 0 * (sx (φ + τ • w) 1 * sy (φ + τ • w) 1) *
      (sx (φ + τ • w) 2 * sy (φ + τ • w) 2))
      (I * (∑ m, (w m : ℂ)) * (sx φ 0 * sy φ 0 * (sx φ 1 * sy φ 1) * (sx φ 2 * sy φ 2))) 0 := by
    refine hp.congr_deriv ?_
    simp only [Fin.sum_univ_six]; simp only [zero_smul, add_zero, Fin.isValue, Fin.val_zero, Fin.val_one, Fin.val_two, Nat.reduceAdd, zero_add, Fin.reduceFinMk, Pi.mul_apply]; ring
  have hC : HasDerivAt (fun τ : ℝ => cS (sx (φ + τ • w)) (sy (φ + τ • w)))
      (-(I * ∑ m, (w m : ℂ)) * cS (sx φ) (sy φ)) 0 := by
    have := hp'.star
    refine (this.congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun τ => ?_)
    · have e : ∀ z : ℂ, star z = (starRingEnd ℂ) z := fun z => rfl
      rw [e, map_mul, map_mul, Complex.conj_I, map_sum]
      simp only [Complex.conj_ofReal, cS]; ring
    · rfl
  have H := (hP.mul (hH.mul hH)).mul hC
  refine (H.congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun τ => ?_)
  · simp only [dpsi, Fin.sum_univ_six, Pi.mul_apply, zero_smul, add_zero]
    ring
  · simp only [psiS_eq, Pi.mul_apply]

/-! ### Jacobian and directional derivative -/

/-- `∂(−G_k)/∂θ₄` for `k = 0, 1, 2`. -/
def dG4 (v : Bool) (ρ : Fin 4 → ℂ) (k : Fin 3) : ℂ :=
  match k with
  | 0 => 0
  | 1 => I * ρ 3
  | _ => if v then I * ρ 3 * (starRingEnd ℂ) (ρ 2) else I * ρ 3 * (starRingEnd ℂ) (ρ 1)

/-- The complex Jacobian of the three Gram residuals: column `0` is `θ₄`, columns `1..6` the side phases. -/
def edgeJc (v : Bool) (a : Fin 3 → ℝ) (ξ : Fin 7 → ℝ) (k : Fin 3) (m : Fin 7) : ℂ :=
  if h : m.1 = 0 then dG4 v (rho4 a (ξ 0)) k else sideJc (phiOf ξ) k ⟨m.1 - 1, by omega⟩

/-- **The Jacobian** of `edgeF` in `ξ`. -/
def edgeJ (v : Bool) (a : Fin 3 → ℝ) (ξ : Fin 7 → ℝ) : Matrix (Fin 7) (Fin 7) ℝ := fun i m =>
  if h : i.1 < 3 then (edgeJc v a ξ ⟨i.1, h⟩ m).re
  else if h' : i.1 < 6 then (edgeJc v a ξ ⟨i.1 - 3, by omega⟩ m).im
  else if hm : m.1 = 0 then 0 else (dpsi (phiOf ξ) ⟨m.1 - 1, by omega⟩).im

lemma hasDerivAt_rho3 (a : Fin 3 → ℝ) (ξ w : Fin 7 → ℝ) :
    HasDerivAt (fun τ : ℝ => rho4 a ((ξ + τ • w) 0) 3) (I * w 0 * rho4 a (ξ 0) 3) 0 := by
  have e : (fun τ : ℝ => rho4 a ((ξ + τ • w) 0) 3) = fun τ : ℝ => Complex.exp (((ξ 0 + τ * w 0 : ℝ) : ℂ) * I) := by
    funext τ; rw [rho4_apply]; simp [th4]
  rw [e]
  have := hasDerivAt_cexp_line (ξ 0) (w 0)
  convert this using 1
  rw [rho4_apply]; simp [th4]

lemma rho4_line_const (a : Fin 3 → ℝ) (ξ w : Fin 7 → ℝ) (τ : ℝ) (k : Fin 4) (hk : k ≠ 3) :
    rho4 a ((ξ + τ • w) 0) k = rho4 a (ξ 0) k := by
  rw [rho4_apply, rho4_apply]
  fin_cases k <;> simp_all [th4]

/-- The Gram residuals along a line. -/
lemma hasDerivAt_edgeG (v : Bool) (a : Fin 3 → ℝ) (ξ w : Fin 7 → ℝ) (k : Fin 3) :
    HasDerivAt (fun τ : ℝ => sideG (gs v (rho4 a ((ξ + τ • w) 0))) (gt v (rho4 a ((ξ + τ • w) 0)))
      (gr v (rho4 a ((ξ + τ • w) 0))) (phiOf (ξ + τ • w)) k) (∑ m, edgeJc v a ξ k m * w m) 0 := by
  have hφ : ∀ τ : ℝ, phiOf (ξ + τ • w) = phiOf ξ + τ • phiOf w := fun τ => by
    funext j; simp [phiOf]
  have hd3 := hasDerivAt_rho3 a ξ w
  have c0 : ∀ t : ℝ, rho4 a t 0 = Complex.exp ((a 0 : ℂ) * I) := fun t => by rw [rho4_apply]; simp [th4]
  have c1 : ∀ t : ℝ, rho4 a t 1 = Complex.exp ((a 1 : ℂ) * I) := fun t => by rw [rho4_apply]; simp [th4]
  have c2 : ∀ t : ℝ, rho4 a t 2 = Complex.exp ((a 2 : ℂ) * I) := fun t => by rw [rho4_apply]; simp [th4]
  have hG := hasDerivAt_sideG 0 0 0 (phiOf ξ) (phiOf w) k
  have hsum : ∑ m : Fin 7, edgeJc v a ξ k m * w m =
      dG4 v (rho4 a (ξ 0)) k * w 0 + ∑ m : Fin 6, sideJc (phiOf ξ) k m * phiOf w m := by
    rw [Fin.sum_univ_succ]
    simp only [edgeJc, Fin.val_zero, dif_pos, Fin.val_succ, Nat.add_sub_cancel, phiOf]
    congr 1
  rw [hsum]
  fin_cases k
  · -- `sS x − s`: `s` does not depend on `θ₄`
    have hc : HasDerivAt (fun τ : ℝ => gs v (rho4 a ((ξ + τ • w) 0))) 0 0 := by
      have e : (fun τ : ℝ => gs v (rho4 a ((ξ + τ • w) 0))) = fun _ => gs v (rho4 a (ξ 0)) := by
        funext τ; cases v <;> simp [gs, sv, sh, c0, c1, c2]
      rw [e]; exact hasDerivAt_const _ _
    have := (hG.add_const 0).sub hc
    refine (this.congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun τ => ?_)
    · simp [dG4]
    · simp [sideG, hφ]
  · have hc : HasDerivAt (fun τ : ℝ => gt v (rho4 a ((ξ + τ • w) 0))) (-(I * w 0 * rho4 a (ξ 0) 3)) 0 := by
      have e : (fun τ : ℝ => gt v (rho4 a ((ξ + τ • w) 0))) = fun τ =>
          -(1 + (if v then rho4 a (ξ 0) 1 else rho4 a (ξ 0) 2) + rho4 a ((ξ + τ • w) 0) 3) := by
        funext τ; cases v <;> simp [gt, tv, th, c1, c2]
      rw [e]
      have := (hd3.const_add (1 + (if v then rho4 a (ξ 0) 1 else rho4 a (ξ 0) 2))).neg
      exact this
    have := (hG.add_const 0).sub hc
    refine (this.congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun τ => ?_)
    · simp [dG4]; ring
    · simp [sideG, hφ]
  · have hc : HasDerivAt (fun τ : ℝ => gr v (rho4 a ((ξ + τ • w) 0)))
        (-(I * w 0 * rho4 a (ξ 0) 3 * (starRingEnd ℂ) (if v then rho4 a (ξ 0) 2 else rho4 a (ξ 0) 1))) 0 := by
      have e : (fun τ : ℝ => gr v (rho4 a ((ξ + τ • w) 0))) = fun τ =>
          -(1 + (if v then rho4 a (ξ 0) 1 * (starRingEnd ℂ) (rho4 a (ξ 0) 0)
              else rho4 a (ξ 0) 2 * (starRingEnd ℂ) (rho4 a (ξ 0) 0)) +
            rho4 a ((ξ + τ • w) 0) 3 * (starRingEnd ℂ) (if v then rho4 a (ξ 0) 2 else rho4 a (ξ 0) 1)) := by
        funext τ; cases v <;> simp [gr, rv, rh, c0, c1, c2]
      rw [e]
      have := ((hd3.mul_const ((starRingEnd ℂ) (if v then rho4 a (ξ 0) 2 else rho4 a (ξ 0) 1))).const_add
        (1 + (if v then rho4 a (ξ 0) 1 * (starRingEnd ℂ) (rho4 a (ξ 0) 0)
              else rho4 a (ξ 0) 2 * (starRingEnd ℂ) (rho4 a (ξ 0) 0)))).neg
      exact this
    have := (hG.add_const 0).sub hc
    refine (this.congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun τ => ?_)
    · cases v <;> simp [dG4] <;> ring
    · simp [sideG, hφ]

/-- **The directional derivative of the residual** (the `hF` of `Method.krawczyk`). -/
theorem hasDerivAt_edgeF (v : Bool) (a : Fin 3 → ℝ) (y : ℝ) (ξ w : Fin 7 → ℝ) :
    HasDerivAt (fun τ : ℝ => edgeF v a y (ξ + τ • w)) ((edgeJ v a ξ).mulVec w) 0 := by
  rw [hasDerivAt_pi]
  intro i
  by_cases h3 : i.1 < 3
  · have := Complex.reCLM.hasFDerivAt.comp_hasDerivAt (0 : ℝ) (hasDerivAt_edgeG v a ξ w ⟨i.1, h3⟩)
    refine (this.congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun τ => ?_)
    · simp only [Matrix.mulVec, dotProduct, edgeJ, dif_pos h3, Function.comp_apply, Complex.reCLM_apply,
        Complex.re_sum, Complex.re_mul_ofReal]
    · simp only [edgeF, dif_pos (show i.1 < 6 by omega), sideF, dif_pos h3, Function.comp_apply,
        Complex.reCLM_apply]
  · by_cases h6 : i.1 < 6
    · have := Complex.imCLM.hasFDerivAt.comp_hasDerivAt (0 : ℝ)
        (hasDerivAt_edgeG v a ξ w ⟨i.1 - 3, by omega⟩)
      refine (this.congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun τ => ?_)
      · simp only [Matrix.mulVec, dotProduct, edgeJ, dif_neg h3, dif_pos h6, Function.comp_apply,
          Complex.imCLM_apply, Complex.im_sum, Complex.im_mul_ofReal]
      · simp only [edgeF, dif_pos h6, sideF, dif_neg h3, Function.comp_apply, Complex.imCLM_apply]
    · have hφ : ∀ τ : ℝ, phiOf (ξ + τ • w) = phiOf ξ + τ • phiOf w := fun τ => by
        funext j; simp [phiOf]
      have hP := hasDerivAt_psiS (phiOf ξ) (phiOf w)
      have := (Complex.imCLM.hasFDerivAt.comp_hasDerivAt (0 : ℝ) hP).add_const (lsgn v * y / 2)
      refine (this.congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun τ => ?_)
      · simp only [Matrix.mulVec, dotProduct, edgeJ, dif_neg h3, dif_neg h6, Function.comp_apply,
          Complex.imCLM_apply, Complex.im_sum]
        conv_rhs => rw [Fin.sum_univ_succ]
        simp only [Fin.val_zero, dif_pos, zero_mul, zero_add, Fin.val_succ]
        refine Finset.sum_congr rfl fun m _ => ?_
        rw [dif_neg (by omega)]
        simp only [phiOf, Complex.im_mul_ofReal]
        rw [show (⟨m.1 + 1 - 1, by omega⟩ : Fin 6) = m from Fin.ext (by simp)]
      · simp only [edgeF, dif_neg h6, Function.comp_apply, Complex.imCLM_apply, hφ]

end NoFourMUBs.KernelAtlas.Edge
