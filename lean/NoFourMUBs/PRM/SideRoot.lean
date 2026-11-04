import NoFourMUBs.Step2.SideAlg

/-!
# The signature of an actual side is a root of its Gram quadratic

For a normalised phase side `(1; x; y)` with Gram data `s, t, r` and `h = det ≠ 0`, its signature
`T = −π h² ū v̄` satisfies

  `T T̄ = g² η`,  `T + T̄ = χ`,

so `T` is a root of `ζ² − χ ζ + g² η` (`FLATNESS.md` §3, "universal phase-side identities").  The first
is `|π|² = η`; the second follows from the `λ`-identity `λ₂ P̄₂ = g + c₂ z̄` with `|λ₂| = 1`, the norm
identity `|P₂|² = g² + c₂ χ + c₂² η`, and `c₂ = 9 − |s|² ≠ 0`.

Consequently `R = 4 g² η − χ² = 4 (Im T)²`: a corner is strict exactly when its side signature is not
real.
-/

open ComplexConjugate

noncomputable section

namespace NoFourMUBs.Side

/-- `η` and `χ` of the Gram data, with `J = 2 Re(s̄ r̄ t)` as in `gS`. -/
def jS (s t r : ℂ) : ℝ := 2 * (conj s * conj r * t).re
def pS (s t r : ℂ) : ℝ := Complex.normSq s + Complex.normSq t + Complex.normSq r
def etaS (s t r : ℂ) : ℝ := 9 - pS s t r + jS s t r
def chiS (s t r : ℂ) : ℝ :=
  Complex.normSq s * Complex.normSq t + Complex.normSq s * Complex.normSq r +
    Complex.normSq t * Complex.normSq r - Complex.normSq s * Complex.normSq t * Complex.normSq r -
    (pS s t r - 9) * (pS s t r - 18) + (pS s t r - 15) * jS s t r
def RS (s t r : ℂ) : ℝ := 4 * gS s t r ^ 2 * etaS s t r - chiS s t r ^ 2

theorem cast_jS (s t r : ℂ) : (jS s t r : ℂ) = conj s * conj r * t + s * r * conj t := by
  rw [jS]; push_cast [Complex.re_eq_add_conj]; simp [map_mul]; ring

theorem cast_normSq' (z : ℂ) : (Complex.normSq z : ℂ) = z * conj z := (Complex.mul_conj z).symm

/-- `|π|² = η` on an actual side. -/
theorem pi_normSq {x y : Fin 3 → ℂ} (hx : ∀ j, Complex.normSq (x j) = 1)
    (hy : ∀ j, Complex.normSq (y j) = 1) :
    piS x y * conj (piS x y) = (etaS (sS x) (sS y) (rS x y) : ℂ) := by
  have cx : ∀ j, conj (x j) = (x j)⁻¹ := fun j => conj_eq_inv (hx j)
  have cy : ∀ j, conj (y j) = (y j)⁻¹ := fun j => conj_eq_inv (hy j)
  have nx : ∀ j, x j ≠ 0 := fun j => ne_zero_of_normSq (hx j)
  have ny : ∀ j, y j ≠ 0 := fun j => ne_zero_of_normSq (hy j)
  have h0 := nx 0; have h1 := nx 1; have h2 := nx 2
  have k0 := ny 0; have k1 := ny 1; have k2 := ny 2
  simp only [etaS, pS, Complex.ofReal_sub, Complex.ofReal_add, Complex.ofReal_ofNat, cast_jS, cast_normSq']
  simp only [sS, rS, piS, map_add, map_mul, cx, cy, map_inv₀, inv_inv]
  field_simp
  ring

/-- The norm identity `|P₂|² = g² + c₂ χ + c₂² η`, a polynomial identity in `s, t, r` and their
conjugates. -/
theorem P2_normSq (s t r : ℂ) :
    P2 s t r * conj (P2 s t r) =
      (gS s t r : ℂ) ^ 2 + (cR s : ℂ) * chiS s t r + (cR s : ℂ) ^ 2 * etaS s t r := by
  have hg : (gS s t r : ℂ) = 27 - 3 * (s * conj s + t * conj t + r * conj r) +
      (conj s * conj r * t + s * r * conj t) := by
    rw [gS]; push_cast [Complex.re_eq_add_conj, cast_normSq']; simp [map_mul]; ring
  simp only [P2, map_add, map_mul, map_pow, Complex.conj_conj, Complex.conj_ofReal]
  simp only [chiS, etaS, pS, cR, hg, Complex.ofReal_sub, Complex.ofReal_add, Complex.ofReal_mul,
    Complex.ofReal_ofNat, cast_jS, cast_normSq']
  ring

/-- If `|x₀ + x₁ + x₂|² = 9` for unit `x`, the side is singular. -/
theorem hS_eq_zero_of_cR {x y : Fin 3 → ℂ} (hx : ∀ j, Complex.normSq (x j) = 1)
    (h : cR (sS x) = 0) : hS x y = 0 := by
  -- `|Σ xⱼ| = 3` forces all `xⱼ` equal
  have hn : Complex.normSq (sS x) = 9 := by rw [cR] at h; linarith
  have e : ∀ j, x j = x 0 := by
    have key : Complex.normSq (x 0 - x 1) + Complex.normSq (x 0 - x 2) + Complex.normSq (x 1 - x 2) = 0 := by
      have u : ∀ j, x j * conj (x j) = 1 := fun j => by rw [Complex.mul_conj, hx j, Complex.ofReal_one]
      have : ((Complex.normSq (x 0 - x 1) + Complex.normSq (x 0 - x 2) + Complex.normSq (x 1 - x 2) : ℝ) : ℂ) =
          0 := by
        push_cast [cast_normSq']
        have hn' : sS x * conj (sS x) = 9 := by rw [← cast_normSq', hn]; norm_num
        simp only [sS, map_add, map_sub] at hn' ⊢
        linear_combination (-1 : ℂ) * hn' + 3 * u 0 + 3 * u 1 + 3 * u 2
      exact_mod_cast this
    have a := Complex.normSq_nonneg (x 0 - x 1)
    have b := Complex.normSq_nonneg (x 0 - x 2)
    have c := Complex.normSq_nonneg (x 1 - x 2)
    have e1 : Complex.normSq (x 0 - x 1) = 0 := by linarith
    have e2 : Complex.normSq (x 0 - x 2) = 0 := by linarith
    intro j; fin_cases j
    · rfl
    · exact (sub_eq_zero.1 (Complex.normSq_eq_zero.1 e1)).symm
    · exact (sub_eq_zero.1 (Complex.normSq_eq_zero.1 e2)).symm
  simp only [hS]; rw [e 1, e 2]; ring

/-- **The signature of an actual nonsingular side is a root of its Gram quadratic.** -/
theorem TS_root {x y : Fin 3 → ℂ} (hx : ∀ j, Complex.normSq (x j) = 1)
    (hy : ∀ j, Complex.normSq (y j) = 1) (hh : hS x y ≠ 0) :
    TS x y * conj (TS x y) = (gS (sS x) (sS y) (rS x y) : ℂ) ^ 2 * etaS (sS x) (sS y) (rS x y) ∧
      TS x y + conj (TS x y) = (chiS (sS x) (sS y) (rS x y) : ℂ) := by
  obtain ⟨-, -, I2, G⟩ := side_identities hx hy
  set s := sS x; set t := sS y; set r := rS x y
  have uu : uS x * conj (uS x) = 1 := by
    rw [Complex.mul_conj]; simp [uS, Complex.normSq_mul, hx]
  have vv : uS y * conj (uS y) = 1 := by
    rw [Complex.mul_conj]; simp [uS, Complex.normSq_mul, hy]
  have hg : hS x y * conj (hS x y) = (gS s t r : ℂ) := by rw [Complex.mul_conj]; exact G
  have pp := pi_normSq hx hy
  -- `|T|² = |π|² |h|⁴ = η g²`
  have hT : TS x y * conj (TS x y) = (gS s t r : ℂ) ^ 2 * etaS s t r := by
    rw [← pp, ← hg]; simp only [TS, map_mul, map_neg, map_pow, Complex.conj_conj]
    linear_combination (piS x y * conj (piS x y) * (hS x y * conj (hS x y)) ^ 2 * (uS y * conj (uS y))) * uu +
      (piS x y * conj (piS x y) * (hS x y * conj (hS x y)) ^ 2) * vv
  refine ⟨hT, ?_⟩
  -- the `λ₂` identity: `(−u h̄ / h) P̄₂ = g + c₂ z̄` with `z = T / g`
  have L := lam_eq hh (uS x) I2
  rw [hg] at L
  set g : ℝ := gS s t r
  have gpos : 0 < g := by
    have e : Complex.normSq (hS x y) = g := by exact_mod_cast G
    rw [← e]; exact Complex.normSq_pos.2 hh
  have gne : (g : ℂ) ≠ 0 := by exact_mod_cast gpos.ne'
  have hc : conj (hS x y) ≠ 0 := (map_ne_zero _).2 hh
  -- take norms: `|g + c₂ z̄|² = |P₂|²`
  have lamunit : (-uS x * conj (hS x y) / hS x y) * conj (-uS x * conj (hS x y) / hS x y) = 1 := by
    simp only [map_div₀, map_mul, map_neg, Complex.conj_conj]
    field_simp
    linear_combination uu
  have NP := P2_normSq s t r
  set c : ℝ := cR s
  have hc2 : (c : ℂ) ≠ 0 := by
    have : c ≠ 0 := fun h0 => hh (hS_eq_zero_of_cR hx h0)
    exact_mod_cast this
  rw [show -piS x y * hS x y ^ 2 * conj (uS x) * conj (uS y) = TS x y from rfl] at L
  set T := TS x y
  set z : ℂ := T / g with hz
  have hTz : T = g * z := by rw [hz]; field_simp
  have czz : conj z = conj T / g := by rw [hz, map_div₀, Complex.conj_ofReal]
  have hzz : z * conj z = etaS s t r := by
    rw [czz, hz]; field_simp; linear_combination hT
  -- `|λ|² = 1` turns `L` into `|P₂|² = (g + c z̄)(g + c z)`
  have N2 : P2 s t r * conj (P2 s t r) = ((g : ℂ) + c * conj z) * ((g : ℂ) + c * z) := by
    have e := congrArg (fun w => w * conj w) L
    rw [show (-uS x * conj (hS x y) / hS x y * conj (P2 s t r)) *
        conj (-uS x * conj (hS x y) / hS x y * conj (P2 s t r)) = P2 s t r * conj (P2 s t r) by
      rw [map_mul, Complex.conj_conj]; linear_combination (P2 s t r * conj (P2 s t r)) * lamunit] at e
    rw [e]; simp only [map_add, map_mul, Complex.conj_ofReal, Complex.conj_conj]
  rw [NP] at N2
  have key : (c : ℂ) * ((g : ℂ) * (z + conj z) - chiS s t r) = 0 := by
    linear_combination (-1 : ℂ) * N2 - (c : ℂ) ^ 2 * hzz
  have h2 := (mul_eq_zero.1 key).resolve_left hc2
  rw [hTz, map_mul, Complex.conj_ofReal]
  linear_combination h2

/-- **`R = 4 (Im T)²`** on an actual nonsingular side: the corner is strict exactly when the signature is
not real. -/
theorem RS_eq_im_sq {x y : Fin 3 → ℂ} (hx : ∀ j, Complex.normSq (x j) = 1)
    (hy : ∀ j, Complex.normSq (y j) = 1) (hh : hS x y ≠ 0) :
    RS (sS x) (sS y) (rS x y) = 4 * (TS x y).im ^ 2 := by
  obtain ⟨h1, h2⟩ := TS_root hx hy hh
  have e1 := congrArg Complex.re h1
  have e2 := congrArg Complex.re h2
  rw [← Complex.ofReal_pow, ← Complex.ofReal_mul, Complex.ofReal_re] at e1
  simp only [Complex.mul_re, Complex.conj_re, Complex.conj_im, Complex.add_re, Complex.ofReal_re] at e1 e2
  rw [RS, ← e2]
  nlinarith [e1]

end NoFourMUBs.Side
