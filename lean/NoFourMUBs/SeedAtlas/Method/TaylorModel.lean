import NoFourMUBs.SeedAtlas.Method.Bounds

/-!
# Second-order Taylor models (`proof/seed_atlas/SPEC.md` §2, "How C1 is certified")

On the box `u ∈ ∏ⱼ [−hⱼ, hⱼ]` (`InBox h u`), a Taylor model `T = (c, g, H, ρ)` **encloses** `f` (`T.Encl h f`) if
`|f(u) − (c + g·u + uᵀHu)| ≤ ρ` for every `u` in the box.  With `L₁ = Σ |gⱼ| hⱼ` and `L₂ = Σ |H_jl| hⱼ h_l`
(`L1`, `L2`), the operation rules of the SPEC and of the prototype `proof/seed_atlas/prototype/tm2.py` are sound:

* `Encl.add`, `Encl.neg`, `Encl.sub`, `Encl.smul`, `Encl.const`, `Encl.conj`, `Encl.re`, `Encl.im`;
* `Encl.mul` (orders `0` to `2` exact, degree `≥ 3` into the remainder):
  `ρ = |c| ρ' + ρ |c'| + L₁L₂' + L₂L₁' + L₂L₂' + (L₁ + L₂) ρ' + ρ (L₁' + L₂') + ρ ρ'`;
* `Encl.expI` (the `e^{i·}` rule of step 1), for a real model `φ`:
  `e^{iφ} ∈ e^{ic}(1 + i g·u + uᵀ(iH − ggᵀ/2)u)` with
  `ρ_new = ρ + L₁(L₂ + ρ) + ½(L₂ + ρ)² + (L₁ + L₂ + ρ)³/6`;
* `Encl.arg` (step 4): for `D = c(1 + u)`, `u` enclosed by `(0, g/c, H/c, ρ/|c|)` with `|u| ≤ u_b < 1`,
  `D = |D| e^{iΦ}` with `Φ` enclosed by `a + Im(u − u²/2)`, remainder `ρ_u + ½ρ_{u²} + u_b³/(3(1 − u_b))`,
  for any `a` with `e^{ia} = c/|c|` (the branch nearest `P` is a choice of `a`);
* `Encl.mono`, `Encl.perturb`: enlarging the remainder, and moving coefficients (for ball coefficients: rounding is
  absorbed into `ρ`); `Encl.congr_quad`: only the quadratic form of `H` matters (symmetrisation).
-/

open Complex

noncomputable section

namespace NoFourMUBs.SeedAtlas.Method

variable {d : ℕ}

/-- The box `∏ⱼ [−hⱼ, hⱼ]`. -/
def InBox (h u : Fin d → ℝ) : Prop := ∀ j, |u j| ≤ h j

lemma InBox.h_nonneg {h u : Fin d → ℝ} (hu : InBox h u) (j : Fin d) : 0 ≤ h j := (abs_nonneg _).trans (hu j)

/-! ### Complex Taylor models -/

/-- A complex second-order Taylor model `c + g·u + uᵀ H u + e`, `|e| ≤ ρ`. -/
structure TM (d : ℕ) where
  c : ℂ
  g : Fin d → ℂ
  H : Fin d → Fin d → ℂ
  ρ : ℝ

namespace TM

def lin (T : TM d) (u : Fin d → ℝ) : ℂ := ∑ j, T.g j * u j
def quad (T : TM d) (u : Fin d → ℝ) : ℂ := ∑ j, ∑ l, T.H j l * (u j * u l)
def poly (T : TM d) (u : Fin d → ℝ) : ℂ := T.c + T.lin u + T.quad u
def L1 (T : TM d) (h : Fin d → ℝ) : ℝ := ∑ j, ‖T.g j‖ * h j
def L2 (T : TM d) (h : Fin d → ℝ) : ℝ := ∑ j, ∑ l, ‖T.H j l‖ * (h j * h l)

/-- `T` encloses `f` on the box `h`. -/
def Encl (T : TM d) (h : Fin d → ℝ) (f : (Fin d → ℝ) → ℂ) : Prop :=
  ∀ u, InBox h u → ‖f u - T.poly u‖ ≤ T.ρ

variable (T T' : TM d) {h u : Fin d → ℝ}

lemma norm_lin_le (hu : InBox h u) : ‖T.lin u‖ ≤ T.L1 h :=
  (norm_sum_le _ _).trans (Finset.sum_le_sum fun j _ => by
    rw [norm_mul, Complex.norm_real, Real.norm_eq_abs]
    exact mul_le_mul_of_nonneg_left (hu j) (norm_nonneg _))

lemma norm_quad_le (hu : InBox h u) : ‖T.quad u‖ ≤ T.L2 h :=
  (norm_sum_le _ _).trans (Finset.sum_le_sum fun j _ => (norm_sum_le _ _).trans
    (Finset.sum_le_sum fun l _ => by
      rw [norm_mul, ← Complex.ofReal_mul, Complex.norm_real, Real.norm_eq_abs, abs_mul]
      exact mul_le_mul_of_nonneg_left (mul_le_mul (hu j) (hu l) (abs_nonneg _) (hu.h_nonneg j))
        (norm_nonneg _)))

lemma L1_nonneg (hu : InBox h u) : 0 ≤ T.L1 h :=
  Finset.sum_nonneg fun j _ => mul_nonneg (norm_nonneg _) (hu.h_nonneg j)

lemma L2_nonneg (hu : InBox h u) : 0 ≤ T.L2 h :=
  Finset.sum_nonneg fun j _ => Finset.sum_nonneg fun l _ =>
    mul_nonneg (norm_nonneg _) (mul_nonneg (hu.h_nonneg j) (hu.h_nonneg l))

lemma ρ_nonneg {f : (Fin d → ℝ) → ℂ} (hT : T.Encl h f) (hu : InBox h u) : 0 ≤ T.ρ :=
  (norm_nonneg _).trans (hT u hu)

/-- `|f(u) − c| ≤ L₁ + L₂ + ρ` (the prototype's `var`). -/
lemma Encl.norm_sub_c_le {f : (Fin d → ℝ) → ℂ} (hT : T.Encl h f) (hu : InBox h u) :
    ‖f u - T.c‖ ≤ T.L1 h + T.L2 h + T.ρ := by
  have e : f u - T.c = T.lin u + T.quad u + (f u - T.poly u) := by simp only [poly]; ring
  rw [e]
  exact (norm_add₃_le).trans (add_le_add (add_le_add (T.norm_lin_le hu) (T.norm_quad_le hu)) (hT u hu))

/-! ### Linear operations -/

def const (a : ℂ) : TM d := ⟨a, 0, 0, 0⟩

lemma Encl.const (a : ℂ) : (TM.const a : TM d).Encl h fun _ => a := fun u _ => by
  simp [TM.const, poly, lin, quad]

def add : TM d := ⟨T.c + T'.c, T.g + T'.g, T.H + T'.H, T.ρ + T'.ρ⟩

lemma poly_add (u : Fin d → ℝ) : (T.add T').poly u = T.poly u + T'.poly u := by
  simp only [poly, lin, quad, TM.add, Pi.add_apply, add_mul, Finset.sum_add_distrib]; ring

lemma Encl.add {f f' : (Fin d → ℝ) → ℂ} (hT : T.Encl h f) (hT' : T'.Encl h f') :
    (T.add T').Encl h fun u => f u + f' u := fun u hu => by
  rw [poly_add]
  calc ‖f u + f' u - (T.poly u + T'.poly u)‖ = ‖(f u - T.poly u) + (f' u - T'.poly u)‖ := by ring_nf
    _ ≤ T.ρ + T'.ρ := (norm_add_le _ _).trans (add_le_add (hT u hu) (hT' u hu))

def smul (a : ℂ) : TM d := ⟨a * T.c, fun j => a * T.g j, fun j l => a * T.H j l, ‖a‖ * T.ρ⟩

lemma poly_smul (a : ℂ) (u : Fin d → ℝ) : (T.smul a).poly u = a * T.poly u := by
  simp only [poly, lin, quad, TM.smul, mul_add, Finset.mul_sum, mul_assoc]

lemma Encl.smul {f : (Fin d → ℝ) → ℂ} (hT : T.Encl h f) (a : ℂ) :
    (T.smul a).Encl h fun u => a * f u := fun u hu => by
  rw [poly_smul, ← mul_sub, norm_mul]
  exact mul_le_mul_of_nonneg_left (hT u hu) (norm_nonneg _)

def neg : TM d := ⟨-T.c, -T.g, -T.H, T.ρ⟩

lemma Encl.neg {f : (Fin d → ℝ) → ℂ} (hT : T.Encl h f) : T.neg.Encl h fun u => -f u := fun u hu => by
  have : T.neg.poly u = -T.poly u := by
    simp only [poly, lin, quad, TM.neg, Pi.neg_apply, neg_mul, Finset.sum_neg_distrib]; ring
  rw [this, show -f u - -T.poly u = -(f u - T.poly u) by ring, norm_neg]
  exact hT u hu

def sub : TM d := T.add T'.neg

lemma Encl.sub {f f' : (Fin d → ℝ) → ℂ} (hT : T.Encl h f) (hT' : T'.Encl h f') :
    (T.sub T').Encl h fun u => f u - f' u := by
  have := hT.add T T'.neg (hT'.neg T')
  intro u hu
  have h1 := this u hu
  show ‖f u - f' u - (T.add T'.neg).poly u‖ ≤ (T.add T'.neg).ρ
  rwa [show f u - f' u = f u + -f' u by ring]

/-- Entrywise conjugate (the variables are real). -/
def conj : TM d := ⟨starRingEnd ℂ T.c, fun j => starRingEnd ℂ (T.g j), fun j l => starRingEnd ℂ (T.H j l), T.ρ⟩

lemma Encl.conj {f : (Fin d → ℝ) → ℂ} (hT : T.Encl h f) :
    T.conj.Encl h fun u => starRingEnd ℂ (f u) := fun u hu => by
  have : T.conj.poly u = starRingEnd ℂ (T.poly u) := by
    simp only [poly, lin, quad, TM.conj, map_add, map_sum, map_mul, Complex.conj_ofReal]
  rw [this, ← map_sub, Complex.norm_conj]
  exact hT u hu

lemma Encl.mono {f : (Fin d → ℝ) → ℂ} (hT : T.Encl h f) {ρ' : ℝ} (hρ : T.ρ ≤ ρ') :
    (⟨T.c, T.g, T.H, ρ'⟩ : TM d).Encl h f := fun u hu => (hT u hu).trans hρ

/-- Only the quadratic form of `H` matters (e.g. symmetrisation). -/
lemma Encl.congr_quad {f : (Fin d → ℝ) → ℂ} (hT : T.Encl h f) {H' : Fin d → Fin d → ℂ}
    (hH : ∀ u, ∑ j, ∑ l, H' j l * (u j * u l) = T.quad u) : (⟨T.c, T.g, H', T.ρ⟩ : TM d).Encl h f :=
  fun u hu => by
    have : (⟨T.c, T.g, H', T.ρ⟩ : TM d).poly u = T.poly u := by
      simp only [poly, lin, quad] at hH ⊢; rw [hH]
    rw [this]; exact hT u hu

/-- **Moving the coefficients** (ball arithmetic): coefficients within `δc`, `δg`, `δH` of `T`'s, with the remainder
grown by `δc + Σ δgⱼ hⱼ + Σ δH_jl hⱼ h_l`. -/
lemma Encl.perturb {f : (Fin d → ℝ) → ℂ} (hT : T.Encl h f) (T' : TM d) {δc : ℝ} {δg : Fin d → ℝ}
    {δH : Fin d → Fin d → ℝ} (hc : ‖T'.c - T.c‖ ≤ δc) (hg : ∀ j, ‖T'.g j - T.g j‖ ≤ δg j)
    (hH : ∀ j l, ‖T'.H j l - T.H j l‖ ≤ δH j l)
    (hρ : T.ρ + δc + ∑ j, δg j * h j + ∑ j, ∑ l, δH j l * (h j * h l) ≤ T'.ρ) : T'.Encl h f := fun u hu => by
  set D : TM d := ⟨T'.c - T.c, T'.g - T.g, T'.H - T.H, 0⟩
  have e : T'.poly u = T.poly u + D.poly u := by
    simp only [poly, lin, quad, D, Pi.sub_apply, sub_mul, Finset.sum_sub_distrib]; ring
  have h1 : ‖D.lin u‖ ≤ ∑ j, δg j * h j := (D.norm_lin_le hu).trans
    (Finset.sum_le_sum fun j _ => mul_le_mul_of_nonneg_right (hg j) (hu.h_nonneg j))
  have h2 : ‖D.quad u‖ ≤ ∑ j, ∑ l, δH j l * (h j * h l) := (D.norm_quad_le hu).trans
    (Finset.sum_le_sum fun j _ => Finset.sum_le_sum fun l _ =>
      mul_le_mul_of_nonneg_right (hH j l) (mul_nonneg (hu.h_nonneg j) (hu.h_nonneg l)))
  rw [e]
  have e2 : f u - (T.poly u + D.poly u) = (f u - T.poly u) - D.c - D.lin u - D.quad u := by
    simp only [poly]; ring
  rw [e2]
  have n1 := norm_sub_le ((f u - T.poly u) - D.c - D.lin u) (D.quad u)
  have n2 := norm_sub_le ((f u - T.poly u) - D.c) (D.lin u)
  have n3 := norm_sub_le (f u - T.poly u) D.c
  have := hT u hu
  have hc' : ‖D.c‖ ≤ δc := hc
  linarith

/-! ### Products -/

/-- The product model: orders `0` to `2` exact, degree `≥ 3` into the remainder. -/
def mul (h : Fin d → ℝ) : TM d :=
  ⟨T.c * T'.c, fun j => T.c * T'.g j + T'.c * T.g j,
    fun j l => T.c * T'.H j l + T'.c * T.H j l + T.g j * T'.g l,
    ‖T.c‖ * T'.ρ + T.ρ * ‖T'.c‖ + T.L1 h * T'.L2 h + T.L2 h * T'.L1 h + T.L2 h * T'.L2 h +
      (T.L1 h + T.L2 h) * T'.ρ + T.ρ * (T'.L1 h + T'.L2 h) + T.ρ * T'.ρ⟩

lemma lin_mul_lin (u : Fin d → ℝ) :
    T.lin u * T'.lin u = ∑ j, ∑ l, T.g j * T'.g l * (u j * u l) := by
  simp only [lin]
  rw [Finset.sum_mul_sum]
  refine Finset.sum_congr rfl fun j _ => Finset.sum_congr rfl fun l _ => ?_
  ring

lemma Encl.mul {f f' : (Fin d → ℝ) → ℂ} (hT : T.Encl h f) (hT' : T'.Encl h f') :
    (T.mul T' h).Encl h fun u => f u * f' u := fun u hu => by
  set e := f u - T.poly u
  set e' := f' u - T'.poly u
  have hp : (T.mul T' h).poly u = T.c * T'.c + (T.c * T'.lin u + T'.c * T.lin u) +
      (T.c * T'.quad u + T'.c * T.quad u + T.lin u * T'.lin u) := by
    rw [lin_mul_lin]
    simp only [poly, lin, quad, TM.mul, add_mul, Finset.sum_add_distrib, Finset.mul_sum, mul_assoc]
  have key : f u * f' u - (T.mul T' h).poly u =
      (T.lin u * T'.quad u + T.quad u * T'.lin u + T.quad u * T'.quad u) +
      (T.c * e' + e * T'.c + (T.lin u + T.quad u) * e' + e * (T'.lin u + T'.quad u) + e * e') := by
    rw [hp]; simp only [e, e', poly]; ring
  rw [key]
  have a1 := T.norm_lin_le hu; have a2 := T.norm_quad_le hu
  have b1 := T'.norm_lin_le hu; have b2 := T'.norm_quad_le hu
  have he := hT u hu; have he' := hT' u hu
  have n1 := T.L1_nonneg hu; have n2 := T.L2_nonneg hu
  have m1 := T'.L1_nonneg hu; have m2 := T'.L2_nonneg hu
  have r0 := T.ρ_nonneg hT hu; have r0' := T'.ρ_nonneg hT' hu
  simp only [TM.mul]
  have t1 : ‖T.lin u * T'.quad u‖ ≤ T.L1 h * T'.L2 h := by
    rw [norm_mul]; exact mul_le_mul a1 b2 (norm_nonneg _) n1
  have t2 : ‖T.quad u * T'.lin u‖ ≤ T.L2 h * T'.L1 h := by
    rw [norm_mul]; exact mul_le_mul a2 b1 (norm_nonneg _) n2
  have t3 : ‖T.quad u * T'.quad u‖ ≤ T.L2 h * T'.L2 h := by
    rw [norm_mul]; exact mul_le_mul a2 b2 (norm_nonneg _) n2
  have t4 : ‖T.c * e'‖ ≤ ‖T.c‖ * T'.ρ := by rw [norm_mul]; exact mul_le_mul_of_nonneg_left he' (norm_nonneg _)
  have t5 : ‖e * T'.c‖ ≤ T.ρ * ‖T'.c‖ := by rw [norm_mul]; exact mul_le_mul_of_nonneg_right he (norm_nonneg _)
  have t6 : ‖(T.lin u + T.quad u) * e'‖ ≤ (T.L1 h + T.L2 h) * T'.ρ := by
    rw [norm_mul]; exact mul_le_mul ((norm_add_le _ _).trans (add_le_add a1 a2)) he' (norm_nonneg _) (by linarith)
  have t7 : ‖e * (T'.lin u + T'.quad u)‖ ≤ T.ρ * (T'.L1 h + T'.L2 h) := by
    rw [norm_mul]; exact mul_le_mul he ((norm_add_le _ _).trans (add_le_add b1 b2)) (norm_nonneg _) r0
  have t8 : ‖e * e'‖ ≤ T.ρ * T'.ρ := by rw [norm_mul]; exact mul_le_mul he he' (norm_nonneg _) r0
  have n1 := norm_add_le (T.lin u * T'.quad u + T.quad u * T'.lin u + T.quad u * T'.quad u)
    (T.c * e' + e * T'.c + (T.lin u + T.quad u) * e' + e * (T'.lin u + T'.quad u) + e * e')
  have n2 := norm_add₃_le (a := T.lin u * T'.quad u) (b := T.quad u * T'.lin u) (c := T.quad u * T'.quad u)
  have n3 := norm_add_le (T.c * e' + e * T'.c + (T.lin u + T.quad u) * e' + e * (T'.lin u + T'.quad u)) (e * e')
  have n4 := norm_add_le (T.c * e' + e * T'.c + (T.lin u + T.quad u) * e') (e * (T'.lin u + T'.quad u))
  have n5 := norm_add₃_le (a := T.c * e') (b := e * T'.c) (c := (T.lin u + T.quad u) * e')
  linarith

end TM

/-! ### Real and imaginary parts -/

/-- A real second-order Taylor model. -/
structure RTM (d : ℕ) where
  c : ℝ
  g : Fin d → ℝ
  H : Fin d → Fin d → ℝ
  ρ : ℝ

namespace RTM

def lin (T : RTM d) (u : Fin d → ℝ) : ℝ := ∑ j, T.g j * u j
def quad (T : RTM d) (u : Fin d → ℝ) : ℝ := ∑ j, ∑ l, T.H j l * (u j * u l)
def poly (T : RTM d) (u : Fin d → ℝ) : ℝ := T.c + T.lin u + T.quad u
def L1 (T : RTM d) (h : Fin d → ℝ) : ℝ := ∑ j, |T.g j| * h j
def L2 (T : RTM d) (h : Fin d → ℝ) : ℝ := ∑ j, ∑ l, |T.H j l| * (h j * h l)

/-- `T` encloses the real function `f` on the box `h`. -/
def Encl (T : RTM d) (h : Fin d → ℝ) (f : (Fin d → ℝ) → ℝ) : Prop :=
  ∀ u, InBox h u → |f u - T.poly u| ≤ T.ρ

/-- As a complex model. -/
def toTM (T : RTM d) : TM d := ⟨T.c, fun j => T.g j, fun j l => T.H j l, T.ρ⟩

lemma toTM_poly (T : RTM d) (u : Fin d → ℝ) : T.toTM.poly u = (T.poly u : ℂ) := by
  simp [TM.poly, TM.lin, TM.quad, poly, lin, quad, toTM]

lemma toTM_L1 (T : RTM d) (h : Fin d → ℝ) : T.toTM.L1 h = T.L1 h := by
  simp [TM.L1, L1, toTM, Complex.norm_real]

lemma toTM_L2 (T : RTM d) (h : Fin d → ℝ) : T.toTM.L2 h = T.L2 h := by
  simp [TM.L2, L2, toTM, Complex.norm_real]

lemma Encl.toTM {T : RTM d} {h : Fin d → ℝ} {f : (Fin d → ℝ) → ℝ} (hT : T.Encl h f) :
    T.toTM.Encl h fun u => (f u : ℂ) := fun u hu => by
  rw [toTM_poly, ← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs]; exact hT u hu

end RTM

namespace TM

variable {h : Fin d → ℝ}

def re (T : TM d) : RTM d := ⟨T.c.re, fun j => (T.g j).re, fun j l => (T.H j l).re, T.ρ⟩
def im (T : TM d) : RTM d := ⟨T.c.im, fun j => (T.g j).im, fun j l => (T.H j l).im, T.ρ⟩

lemma re_poly (T : TM d) (u : Fin d → ℝ) : T.re.poly u = (T.poly u).re := by
  simp [RTM.poly, RTM.lin, RTM.quad, poly, lin, quad, re, Complex.add_re, Complex.re_sum, Complex.mul_re]

lemma im_poly (T : TM d) (u : Fin d → ℝ) : T.im.poly u = (T.poly u).im := by
  simp [RTM.poly, RTM.lin, RTM.quad, poly, lin, quad, im, Complex.add_im, Complex.im_sum, Complex.mul_im]

lemma Encl.re {T : TM d} {f : (Fin d → ℝ) → ℂ} (hT : T.Encl h f) : T.re.Encl h fun u => (f u).re :=
  fun u hu => by
    rw [re_poly, ← Complex.sub_re]; exact (abs_re_le_norm _).trans (hT u hu)

lemma Encl.im {T : TM d} {f : (Fin d → ℝ) → ℂ} (hT : T.Encl h f) : T.im.Encl h fun u => (f u).im :=
  fun u hu => by
    rw [im_poly, ← Complex.sub_im]; exact (abs_im_le_norm _).trans (hT u hu)

/-! ### `e^{i·}` -/

/-- The `e^{i·}` rule: `e^{ic}(1 + i g·u + uᵀ(iH − ggᵀ/2)u)`, remainder
`ρ + L₁(L₂ + ρ) + ½(L₂ + ρ)² + (L₁ + L₂ + ρ)³/6`. -/
def expTM (φ : RTM d) (h : Fin d → ℝ) : TM d :=
  ⟨exp (φ.c * I), fun j => exp (φ.c * I) * (I * φ.g j),
    fun j l => exp (φ.c * I) * (I * φ.H j l - φ.g j * φ.g l / 2),
    φ.ρ + φ.L1 h * (φ.L2 h + φ.ρ) + (φ.L2 h + φ.ρ) ^ 2 / 2 + (φ.L1 h + φ.L2 h + φ.ρ) ^ 3 / 6⟩

theorem Encl.expI {φ : RTM d} {f : (Fin d → ℝ) → ℝ} (hφ : φ.Encl h f) :
    (expTM φ h).Encl h fun u => exp (f u * I) := fun u hu => by
  set a := φ.lin u
  set q := φ.quad u
  set e := f u - φ.poly u
  set x := f u - φ.c
  have hx : x = a + q + e := by simp only [x, a, q, e, RTM.poly]; ring
  have ha : |a| ≤ φ.L1 h := by
    have := φ.toTM.norm_lin_le hu
    rw [RTM.toTM_L1] at this
    have e1 : φ.toTM.lin u = (a : ℂ) := by simp [TM.lin, RTM.lin, RTM.toTM, a]
    rwa [e1, Complex.norm_real, Real.norm_eq_abs] at this
  have hq : |q| ≤ φ.L2 h := by
    have := φ.toTM.norm_quad_le hu
    rw [RTM.toTM_L2] at this
    have e1 : φ.toTM.quad u = (q : ℂ) := by simp [TM.quad, RTM.quad, RTM.toTM, q]
    rwa [e1, Complex.norm_real, Real.norm_eq_abs] at this
  have he : |e| ≤ φ.ρ := hφ u hu
  have hL1 : 0 ≤ φ.L1 h := (abs_nonneg _).trans ha
  have hL2 : 0 ≤ φ.L2 h := (abs_nonneg _).trans hq
  have hρ : 0 ≤ φ.ρ := (abs_nonneg _).trans he
  set b := q + e
  have hb : |b| ≤ φ.L2 h + φ.ρ := (abs_add_le _ _).trans (add_le_add hq he)
  have hxb : |x| ≤ φ.L1 h + φ.L2 h + φ.ρ := by
    rw [hx, add_assoc]; exact (abs_add_le _ _).trans (by linarith [abs_add_le q e])
  -- the polynomial
  have hp : (expTM φ h).poly u = exp (φ.c * I) * (1 + I * a + I * q - (a : ℂ) ^ 2 / 2) := by
    simp only [poly, lin, quad, expTM]
    set E := exp (φ.c * I)
    have hA : (a : ℂ) = ∑ j, (φ.g j : ℂ) * u j := by
      show ((∑ j, φ.g j * u j : ℝ) : ℂ) = _; push_cast; rfl
    have hQ : (q : ℂ) = ∑ j, ∑ l, (φ.H j l : ℂ) * (u j * u l) := by
      show ((∑ j, ∑ l, φ.H j l * (u j * u l) : ℝ) : ℂ) = _; push_cast; rfl
    have h1 : ∀ j, E * (I * φ.g j) * u j = E * I * ((φ.g j : ℂ) * u j) := fun j => by ring
    have h2 : ∀ j l, E * (I * φ.H j l - φ.g j * φ.g l / 2) * ((u j : ℂ) * u l) =
        E * I * ((φ.H j l : ℂ) * (u j * u l)) - E / 2 * (((φ.g j : ℂ) * u j) * ((φ.g l : ℂ) * u l)) :=
      fun j l => by ring
    simp_rw [h1, h2, Finset.sum_sub_distrib, ← Finset.mul_sum]
    rw [← hA, ← hQ]
    simp only [← Finset.sum_mul, ← hA]
    ring
  have hf : exp (f u * I) = exp (φ.c * I) * exp (x * I) := by
    rw [← exp_add]; congr 1; simp only [x]; push_cast; ring
  beta_reduce
  rw [hp, hf, ← mul_sub, norm_mul, norm_exp_ofReal_mul_I, one_mul]
  -- `e^{ix} − (1 + ia + iq − a²/2) = [e^{ix} − 1 − ix + x²/2] + ie − (2ab + b²)/2`
  have key : exp (x * I) - (1 + I * a + I * q - (a : ℂ) ^ 2 / 2) =
      (exp (x * I) - 1 - x * I + (x : ℂ) ^ 2 / 2) + I * e - ((a : ℂ) * b + (b : ℂ) ^ 2 / 2) := by
    rw [hx]; simp only [b]; push_cast; ring
  rw [key]
  have r1 := norm_exp_I_taylor2_le x
  have r2 : ‖I * (e : ℂ)‖ ≤ φ.ρ := by rw [norm_mul, norm_I, one_mul, Complex.norm_real]; exact he
  have r3 : ‖(a : ℂ) * b + (b : ℂ) ^ 2 / 2‖ ≤ φ.L1 h * (φ.L2 h + φ.ρ) + (φ.L2 h + φ.ρ) ^ 2 / 2 := by
    have : ((a : ℂ) * b + (b : ℂ) ^ 2 / 2) = ((a * b + b ^ 2 / 2 : ℝ) : ℂ) := by push_cast; ring
    rw [this, Complex.norm_real, Real.norm_eq_abs]
    calc |a * b + b ^ 2 / 2| ≤ |a| * |b| + |b| ^ 2 / 2 := by
          refine (abs_add_le _ _).trans (le_of_eq ?_); rw [abs_mul, abs_div, abs_pow]; norm_num
      _ ≤ _ := by gcongr
  have r4 : |x| ^ 3 / 6 ≤ (φ.L1 h + φ.L2 h + φ.ρ) ^ 3 / 6 := by gcongr
  have c1 := norm_sub_le (exp (x * I) - 1 - x * I + (x : ℂ) ^ 2 / 2 + I * e) ((a : ℂ) * b + (b : ℂ) ^ 2 / 2)
  have c2 := norm_add_le (exp (x * I) - 1 - x * I + (x : ℂ) ^ 2 / 2) (I * (e : ℂ))
  simp only [expTM]
  linarith

/-! ### `arg` -/

/-- The model of `u = (D − c)/c`. -/
def uOf (D : TM d) : TM d := ⟨0, fun j => D.g j / D.c, fun j l => D.H j l / D.c, D.ρ / ‖D.c‖⟩

lemma Encl.uOf {D : TM d} {f : (Fin d → ℝ) → ℂ} (hD : D.Encl h f) :
    D.uOf.Encl h fun u => (f u - D.c) / D.c := fun u hu => by
  have e1 : ∑ j, D.g j / D.c * (u j : ℂ) = (∑ j, D.g j * u j) / D.c := by
    rw [Finset.sum_div]; exact Finset.sum_congr rfl fun j _ => by ring
  have e2 : ∑ j, ∑ l, D.H j l / D.c * ((u j : ℂ) * u l) = (∑ j, ∑ l, D.H j l * ((u j : ℂ) * u l)) / D.c := by
    rw [Finset.sum_div]
    exact Finset.sum_congr rfl fun j _ => by
      rw [Finset.sum_div]; exact Finset.sum_congr rfl fun l _ => by ring
  have e : D.uOf.poly u = (D.poly u - D.c) / D.c := by
    simp only [poly, lin, quad, TM.uOf]
    rw [e1, e2]; ring
  rw [e, ← sub_div, norm_div, show f u - D.c - (D.poly u - D.c) = f u - D.poly u by ring]
  exact div_le_div_of_nonneg_right (hD u hu) (norm_nonneg _)

/-- The `arg` model: `a + Im(u − u²/2)`, remainder `ρ_u + ½ ρ_{u²} + u_b³/(3(1 − u_b))`. -/
def argTM (D : TM d) (h : Fin d → ℝ) (a : ℝ) : RTM d :=
  let U := D.uOf
  let U2 := U.mul U h
  let ub := U.L1 h + U.L2 h + U.ρ
  ⟨a, fun j => (U.g j).im - (U2.g j).im / 2, fun j l => (U.H j l).im - (U2.H j l).im / 2,
    U.ρ + U2.ρ / 2 + ub ^ 3 / (3 * (1 - ub))⟩

/-- **The `arg` rule:** if `D` encloses `f`, `c ≠ 0`, `e^{ia} = c/|c|` and `u_b < 1`, then on the box
`f = |f| e^{iΦ}` with `|Φ − (argTM D h a).poly| ≤ (argTM D h a).ρ`. -/
theorem Encl.arg {D : TM d} {f : (Fin d → ℝ) → ℂ} (hD : D.Encl h f) (hc : D.c ≠ 0) {a : ℝ}
    (ha : exp (a * I) = D.c / ‖D.c‖) (hub : D.uOf.L1 h + D.uOf.L2 h + D.uOf.ρ < 1) {u : Fin d → ℝ}
    (hu : InBox h u) :
    ∃ Φ : ℝ, f u = ‖f u‖ * exp (Φ * I) ∧ |Φ - (argTM D h a).poly u| ≤ (argTM D h a).ρ := by
  set U := D.uOf with hUd
  set ub := U.L1 h + U.L2 h + U.ρ
  set v := (f u - D.c) / D.c
  have hU := hD.uOf
  have hU2 := hU.mul U U hU
  have hv : ‖v‖ ≤ ub := by
    have := TM.Encl.norm_sub_c_le U hU hu
    rwa [show U.c = 0 from rfl, sub_zero] at this
  have hv1 : ‖v‖ < 1 := lt_of_le_of_lt hv hub
  obtain ⟨R, hR, h1⟩ := exists_arg_one_add hv1
  have hfv : f u = D.c * (1 + v) := by simp only [v]; field_simp; ring
  have hcn : (‖D.c‖ : ℂ) ≠ 0 := by exact_mod_cast (norm_pos_iff.2 hc).ne'
  refine ⟨a + ((v - v ^ 2 / 2).im + R), ?_, ?_⟩
  · have hca : D.c = ‖D.c‖ * exp (a * I) := by rw [ha]; field_simp
    set ψ := (v - v ^ 2 / 2).im + R
    have hfu : f u = ((‖D.c‖ * ‖1 + v‖ : ℝ) : ℂ) * exp (((a + ψ : ℝ) : ℂ) * I) := by
      calc f u = D.c * (1 + v) := hfv
        _ = (‖D.c‖ * exp (a * I)) * (‖1 + v‖ * exp (ψ * I)) := by rw [← hca, ← h1]
        _ = _ := by rw [show ((a + ψ : ℝ) : ℂ) * I = a * I + ψ * I by push_cast; ring, exp_add]; push_cast; ring
    have hn : ‖f u‖ = ‖D.c‖ * ‖1 + v‖ := by
      rw [hfu, norm_mul, Complex.norm_real, norm_exp_ofReal_mul_I, mul_one, Real.norm_eq_abs,
        abs_of_nonneg (by positivity)]
    rw [hn]; exact hfu
  · -- `Φ − poly = Im(v − U.poly) − ½ Im(v² − U2.poly) + R`
    have hU0 : U.c = 0 := rfl
    have hU20 : (U.mul U h).c = 0 := by simp [TM.mul, hU0]
    have hpoly : (argTM D h a).poly u = a + (U.poly u).im - ((U.mul U h).poly u).im / 2 := by
      rw [← im_poly, ← im_poly]
      simp only [RTM.poly, RTM.lin, RTM.quad, argTM, TM.im, hU0, hU20, Complex.zero_im, sub_mul,
        Finset.sum_sub_distrib, div_mul_eq_mul_div]
      rw [← hUd]
      simp only [← Finset.sum_div]
      ring
    rw [hpoly]
    have b1 : |(v - U.poly u).im| ≤ U.ρ := (abs_im_le_norm _).trans (hU u hu)
    have b2 : |(v * v - (U.mul U h).poly u).im| ≤ (U.mul U h).ρ := (abs_im_le_norm _).trans (hU2 u hu)
    have b3 : |R| ≤ ub ^ 3 / (3 * (1 - ub)) := by
      refine hR.trans ?_
      have h0 : 0 < 1 - ub := by linarith
      have h0' : 0 < 1 - ‖v‖ := by linarith
      rw [div_le_div_iff₀ (by positivity) (by positivity)]
      have : ‖v‖ ^ 3 ≤ ub ^ 3 := pow_le_pow_left₀ (norm_nonneg _) hv 3
      have h3 : 0 ≤ ‖v‖ ^ 3 := by positivity
      nlinarith
    have e : a + ((v - v ^ 2 / 2).im + R) - (a + (U.poly u).im - ((U.mul U h).poly u).im / 2) =
        (v - U.poly u).im - (v * v - (U.mul U h).poly u).im / 2 + R := by
      simp only [Complex.sub_im, sq, Complex.div_ofNat_im]; ring
    rw [e]
    simp only [argTM]
    have c1 := abs_add_le ((v - U.poly u).im - (v * v - (U.mul U h).poly u).im / 2) R
    have c2 := abs_sub ((v - U.poly u).im) ((v * v - (U.mul U h).poly u).im / 2)
    rw [abs_div, abs_two] at c2
    linarith

end TM

end NoFourMUBs.SeedAtlas.Method
