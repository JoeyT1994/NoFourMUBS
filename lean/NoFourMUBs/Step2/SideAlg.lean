import Mathlib

/-!
# Matched uniqueness (L2), part 1: the algebra of one normalised side

A normalised phase side is `B = (1, 1, 1; x; y)` with unit entries.  Its Gram data are
`s = Σ xⱼ`, `t = Σ yⱼ`, `r = Σ yⱼ x̄ⱼ`; its products `u = Π xⱼ`, `v = Π yⱼ`; determinant `h`, permanent `π`, and
signature `T = −π h² ū v̄`.

* `side_identities`: the three Laurent identities of `STEP2_BLUEPRINT.md` Lemma 7.2 and `|h|² = g(s, t, r)`.
* `side_determined`: when `Im T ≠ 0`, the data `(s, t, r, T)` determine `u`, `v` and `π` (the `λ`-argument).
-/

open ComplexConjugate

noncomputable section

namespace NoFourMUBs.Side

/-! ### The quantities of a side -/

def sS (x : Fin 3 → ℂ) : ℂ := x 0 + x 1 + x 2
def rS (x y : Fin 3 → ℂ) : ℂ := y 0 * conj (x 0) + y 1 * conj (x 1) + y 2 * conj (x 2)
def uS (x : Fin 3 → ℂ) : ℂ := x 0 * x 1 * x 2
def hS (x y : Fin 3 → ℂ) : ℂ :=
  x 1 * y 2 - x 2 * y 1 - x 0 * y 2 + x 2 * y 0 + x 0 * y 1 - x 1 * y 0
def piS (x y : Fin 3 → ℂ) : ℂ :=
  x 0 * y 1 + x 0 * y 2 + x 1 * y 0 + x 1 * y 2 + x 2 * y 0 + x 2 * y 1
def TS (x y : Fin 3 → ℂ) : ℂ := -piS x y * hS x y ^ 2 * conj (uS x) * conj (uS y)

/-- Gram polynomials (`STEP2_BLUEPRINT.md` Lemma 7.2). -/
def cR (r : ℂ) : ℝ := 9 - Complex.normSq r
def P0 (s t r : ℂ) : ℂ := r * s ^ 2 + conj r * t ^ 2 + ((3 - Complex.normSq r : ℝ) : ℂ) * s * t
def P1 (s t r : ℂ) : ℂ := t * conj s ^ 2 + r ^ 2 * conj t + ((3 - Complex.normSq t : ℝ) : ℂ) * r * conj s
def P2 (s t r : ℂ) : ℂ :=
  s * conj t ^ 2 + conj r ^ 2 * conj s + ((3 - Complex.normSq s : ℝ) : ℂ) * conj r * conj t
def gS (s t r : ℂ) : ℝ :=
  27 - 3 * (Complex.normSq s + Complex.normSq t + Complex.normSq r) + 2 * (conj s * conj r * t).re

lemma conj_eq_inv {z : ℂ} (h : Complex.normSq z = 1) : conj z = z⁻¹ := by
  rw [Complex.inv_def, h, inv_one, Complex.ofReal_one, mul_one]

lemma ne_zero_of_normSq {z : ℂ} (h : Complex.normSq z = 1) : z ≠ 0 := by
  rintro rfl; simp at h

/-! ### The Laurent identities -/

theorem side_identities {x y : Fin 3 → ℂ} (hx : ∀ j, Complex.normSq (x j) = 1)
    (hy : ∀ j, Complex.normSq (y j) = 1) :
    hS x y ^ 2 = uS x * uS y * (cR (rS x y) : ℂ) * conj (piS x y) -
        uS x * uS y * conj (P0 (sS x) (sS y) (rS x y)) ∧
      hS x y ^ 2 = uS x * uS y * (cR (sS y) : ℂ) * conj (piS x y) - uS y * conj (P1 (sS x) (sS y) (rS x y)) ∧
      hS x y ^ 2 = uS x * uS y * (cR (sS x) : ℂ) * conj (piS x y) - uS x * conj (P2 (sS x) (sS y) (rS x y)) ∧
      (Complex.normSq (hS x y) : ℂ) = (gS (sS x) (sS y) (rS x y) : ℂ) := by
  have cx : ∀ j, conj (x j) = (x j)⁻¹ := fun j => conj_eq_inv (hx j)
  have cy : ∀ j, conj (y j) = (y j)⁻¹ := fun j => conj_eq_inv (hy j)
  have nx : ∀ j, x j ≠ 0 := fun j => ne_zero_of_normSq (hx j)
  have ny : ∀ j, y j ≠ 0 := fun j => ne_zero_of_normSq (hy j)
  have h0 := nx 0; have h1 := nx 1; have h2 := nx 2
  have k0 := ny 0; have k1 := ny 1; have k2 := ny 2
  simp only [cR, P0, P1, P2, gS, Complex.ofReal_sub, Complex.ofReal_add, Complex.ofReal_mul,
    Complex.ofReal_ofNat, Complex.re_eq_add_conj, ← Complex.mul_conj]
  simp only [sS, rS, uS, hS, piS, map_add, map_sub, map_mul, map_pow, map_ofNat,
    cx, cy, map_inv₀, inv_inv]
  refine ⟨?_, ?_, ?_, ?_⟩ <;> (field_simp; ring)

/-! ### The data determine `u`, `v`, `π` -/

lemma lam_eq {u v π h : ℂ} {c : ℝ} {P : ℂ} (hh : h ≠ 0) (a : ℂ)
    (I : h ^ 2 = u * v * (c : ℂ) * conj π - a * conj P) :
    (-a * conj h / h) * conj P = h * conj h + c * conj ((-π * h ^ 2 * conj u * conj v) / (h * conj h)) := by
  have hc : conj h ≠ 0 := (map_ne_zero _).mpr hh
  simp only [map_div₀, map_mul, map_neg, map_pow, Complex.conj_conj]
  field_simp
  linear_combination (-1 : ℂ) * I

lemma g_add_ne_zero {g c : ℝ} {T : ℂ} (hg : 0 < g) (hT : T.im ≠ 0) : (g : ℂ) + c * conj (T / g) ≠ 0 := by
  intro h0
  have him : ((g : ℂ) + c * conj (T / g)).im = -(c * T.im / g) := by
    simp [Complex.div_ofReal_im]; ring
  have hre : ((g : ℂ) + c * conj (T / g)).re = g + c * T.re / g := by
    simp [Complex.div_ofReal_re]; ring
  rw [h0] at him hre
  simp only [Complex.zero_im, Complex.zero_re] at him hre
  have hc : c = 0 := by
    by_contra hc
    have : c * T.im / g ≠ 0 := div_ne_zero (mul_ne_zero hc hT) hg.ne'
    exact this (by linarith)
  rw [hc, zero_mul, zero_div, add_zero] at hre
  linarith

lemma pi_eq {u v π h : ℂ} (hh : h ≠ 0) (hu : u * conj u = 1) (hv : v * conj v = 1) :
    π = ((-π * h ^ 2 * conj u * conj v) / (h * conj h)) * (-(u * v) * conj h / h) := by
  have hc : conj h ≠ 0 := (map_ne_zero _).mpr hh
  field_simp
  linear_combination (-π * (v * conj v)) * hu + (-π) * hv

/-- **The data `(s, t, r, T)` determine `u`, `v` and `π`** when `Im T ≠ 0`
(`STEP2_BLUEPRINT.md` Lemma 7.2). -/
theorem side_determined {u v π h u' v' π' h' s t r : ℂ}
    (hu : u * conj u = 1) (hv : v * conj v = 1) (hu' : u' * conj u' = 1) (hv' : v' * conj v' = 1)
    (hh : h ≠ 0) (hh' : h' ≠ 0) (hg : Complex.normSq h' = Complex.normSq h)
    (I0 : h ^ 2 = u * v * (cR r : ℂ) * conj π - (u * v) * conj (P0 s t r))
    (I1 : h ^ 2 = u * v * (cR t : ℂ) * conj π - v * conj (P1 s t r))
    (I2 : h ^ 2 = u * v * (cR s : ℂ) * conj π - u * conj (P2 s t r))
    (I0' : h' ^ 2 = u' * v' * (cR r : ℂ) * conj π' - (u' * v') * conj (P0 s t r))
    (I1' : h' ^ 2 = u' * v' * (cR t : ℂ) * conj π' - v' * conj (P1 s t r))
    (I2' : h' ^ 2 = u' * v' * (cR s : ℂ) * conj π' - u' * conj (P2 s t r))
    (hT : -π' * h' ^ 2 * conj u' * conj v' = -π * h ^ 2 * conj u * conj v)
    (hIm : (-π * h ^ 2 * conj u * conj v).im ≠ 0) :
    u' = u ∧ v' = v ∧ π' = π := by
  set T := -π * h ^ 2 * conj u * conj v with hTdef
  set g := Complex.normSq h with hgdef
  have hgpos : 0 < g := Complex.normSq_pos.mpr hh
  have gC : h * conj h = (g : ℂ) := Complex.mul_conj h
  have gC' : h' * conj h' = (g : ℂ) := by rw [Complex.mul_conj, hg]
  have key : ∀ (a a' : ℂ) (c : ℝ) (P : ℂ),
      h ^ 2 = u * v * (c : ℂ) * conj π - a * conj P →
      h' ^ 2 = u' * v' * (c : ℂ) * conj π' - a' * conj P →
      (-a * conj h / h) = (-a' * conj h' / h') ∧ (-a * conj h / h) ≠ 0 := by
    intro a a' c P I I'
    have e := lam_eq hh a I
    have e' := lam_eq hh' a' I'
    rw [gC] at e; rw [gC', hT] at e'
    have hne := g_add_ne_zero (c := c) hgpos hIm
    have hP : conj P ≠ 0 := by
      intro h0; rw [h0, mul_zero] at e; exact hne e.symm
    refine ⟨mul_right_cancel₀ hP (e.trans e'.symm), fun h0 => hne ?_⟩
    rw [← e, h0, zero_mul]
  obtain ⟨l0, l0ne⟩ := key (u * v) (u' * v') _ _ I0 I0'
  obtain ⟨l1, -⟩ := key v v' _ _ I1 I1'
  obtain ⟨l2, -⟩ := key u u' _ _ I2 I2'
  have hcu : (-(u * v) * conj h / h) = u * (-v * conj h / h) := by ring
  have hcv : (-(u * v) * conj h / h) = v * (-u * conj h / h) := by ring
  have hcu' : (-(u' * v') * conj h' / h') = u' * (-v' * conj h' / h') := by ring
  have hcv' : (-(u' * v') * conj h' / h') = v' * (-u' * conj h' / h') := by ring
  have hl1 : (-v * conj h / h) ≠ 0 := fun h0 => l0ne (by rw [hcu, h0, mul_zero])
  have hl2 : (-u * conj h / h) ≠ 0 := fun h0 => l0ne (by rw [hcv, h0, mul_zero])
  refine ⟨?_, ?_, ?_⟩
  · apply mul_right_cancel₀ hl1
    rw [← hcu, l1, ← hcu', l0]
  · apply mul_right_cancel₀ hl2
    rw [← hcv, l2, ← hcv', l0]
  · rw [pi_eq (π := π') hh' hu' hv', pi_eq (π := π) hh hu hv, hT, gC, gC', ← l0]
