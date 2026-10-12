import NoFourMUBs.Step2.SideAlg
import NoFourMUBs.Reuse.Archive.SidePermanent

/-!
The actual-side discriminant identity, including singular and critical sides.
This extends the repository's side algebra; it does not assume that a side
was produced by the matched constructor.
-/

open ComplexConjugate

namespace NoFourMUBs.Side

noncomputable section

def pS (s t r : ℂ) : ℝ :=
  Complex.normSq s + Complex.normSq t + Complex.normSq r

def jS (s t r : ℂ) : ℝ := 2 * (conj s * conj r * t).re

def etaS (s t r : ℂ) : ℝ := 9 - pS s t r + jS s t r

def chiS (s t r : ℂ) : ℝ :=
  Complex.normSq s * Complex.normSq t + Complex.normSq s * Complex.normSq r +
    Complex.normSq t * Complex.normSq r -
    Complex.normSq s * Complex.normSq t * Complex.normSq r -
    (pS s t r - 9) * (pS s t r - 18) + (pS s t r - 15) * jS s t r

/-- The permanent norm is determined by the Gram data, with no invertibility guard. -/
theorem permanent_norm {x y : Fin 3 → ℂ}
    (hx : ∀ j, Complex.normSq (x j) = 1)
    (hy : ∀ j, Complex.normSq (y j) = 1) :
    Complex.normSq (piS x y) = etaS (sS x) (sS y) (rS x y) := by
  have h := FourierPhysicalSide.eta_permanent
    (x 0) (x 1) (x 2) (y 0) (y 1) (y 2)
    (hx 0) (hx 1) (hx 2) (hy 0) (hy 1) (hy 2)
  have hp : FourierPhysicalSide.permanent (x 0) (x 1) (x 2)
      (y 0) (y 1) (y 2) = piS x y := by
    unfold FourierPhysicalSide.permanent piS
    ring
  have heta (s t r : ℂ) : FourierGramNumerators.eta s t r = etaS s t r := by
    simp [FourierGramNumerators.eta, FourierGramNumerators.g,
      FourierGramNumerators.sigma, FourierGramNumerators.q,
      etaS, pS, jS, Complex.star_def, Complex.mul_re, Complex.mul_im]
    <;> ring
  rw [hp, heta] at h
  exact h.symm

/-- The real part of the denominator-free signature is fixed by the Gram data. -/
theorem signature_real {x y : Fin 3 → ℂ}
    (hx : ∀ j, Complex.normSq (x j) = 1)
    (hy : ∀ j, Complex.normSq (y j) = 1) :
    2 * (TS x y).re = chiS (sS x) (sS y) (rS x y) := by
  have cx : ∀ j, conj (x j) = (x j)⁻¹ := fun j => conj_eq_inv (hx j)
  have cy : ∀ j, conj (y j) = (y j)⁻¹ := fun j => conj_eq_inv (hy j)
  have h0 := ne_zero_of_normSq (hx 0)
  have h1 := ne_zero_of_normSq (hx 1)
  have h2 := ne_zero_of_normSq (hx 2)
  have k0 := ne_zero_of_normSq (hy 0)
  have k1 := ne_zero_of_normSq (hy 1)
  have k2 := ne_zero_of_normSq (hy 2)
  apply Complex.ofReal_injective
  simp only [chiS, pS, jS, Complex.ofReal_sub, Complex.ofReal_add,
    Complex.ofReal_mul, Complex.ofReal_ofNat, Complex.re_eq_add_conj,
    ← Complex.mul_conj]
  simp only [TS, sS, rS, uS, hS, piS, map_add, map_sub, map_mul, map_neg,
    map_pow, map_ofNat, Complex.conj_conj, cx, cy, map_inv₀, inv_inv]
  field_simp
  ring

/-- The full discriminant is a square on every actual phase side. -/
theorem signature_discriminant {x y : Fin 3 → ℂ}
    (hx : ∀ j, Complex.normSq (x j) = 1)
    (hy : ∀ j, Complex.normSq (y j) = 1) :
    4 * (TS x y).im ^ 2 =
      4 * gS (sS x) (sS y) (rS x y) ^ 2 * etaS (sS x) (sS y) (rS x y) -
        chiS (sS x) (sS y) (rS x y) ^ 2 := by
  have hg : Complex.normSq (hS x y) = gS (sS x) (sS y) (rS x y) :=
    Complex.ofReal_injective (side_identities hx hy).2.2.2
  have hn : Complex.normSq (TS x y) =
      etaS (sS x) (sS y) (rS x y) * gS (sS x) (sS y) (rS x y) ^ 2 := by
    simp [TS, Complex.normSq_mul, map_pow, permanent_norm hx hy,
      hg, uS, hx, hy]
  have hr := signature_real hx hy
  rw [Complex.normSq_apply] at hn
  rw [← hr]
  nlinarith [hn]

end
end NoFourMUBs.Side
