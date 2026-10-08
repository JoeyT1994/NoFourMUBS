import SideDeterminantCap
import QSignedBinding

set_option autoImplicit false
set_option maxHeartbeats 1600000
namespace Seed0024Mathematical20261007
open scoped ComplexConjugate
noncomputable section

def letter (z : Fin 4 → ℂ) (p : Fin 4 × Bool) : ℂ :=
  if p.2 then conj (z p.1) else z p.1
def word (z : Fin 4 → ℂ) (w : List (Fin 4 × Bool)) : ℂ :=
  (w.map (letter z)).prod
def wordCost (e : Fin 4 → ℝ) (w : List (Fin 4 × Bool)) : ℝ :=
  (w.map (fun p => e p.1)).sum

theorem letter_unit (z : Fin 4 → ℂ) (hz : ∀ i, ‖z i‖=1) (p : Fin 4 × Bool) :
    ‖letter z p‖=1 := by
  unfold letter
  split <;> simp [hz]

theorem letter_difference (z v : Fin 4 → ℂ) (p : Fin 4 × Bool) :
    ‖letter z p - letter v p‖=‖z p.1-v p.1‖ := by
  unfold letter
  split
  · rw [← map_sub, Complex.norm_conj]
  · rfl

theorem word_unit (z : Fin 4 → ℂ) (hz : ∀ i, ‖z i‖=1)
    (w : List (Fin 4 × Bool)) : ‖word z w‖=1 := by
  induction w with
  | nil => simp [word]
  | cons p w ih =>
    change ‖letter z p * word z w‖=1
    rw [norm_mul, letter_unit z hz p, ih, one_mul]

theorem unit_product_difference (a b c d : ℂ) (hc : ‖c‖=1) (hb : ‖b‖=1) :
    ‖a*b-c*d‖ ≤ ‖a-c‖+‖b-d‖ := by
  calc
    _ = ‖(a-c)*b+c*(b-d)‖ := by congr 1; ring
    _ ≤ ‖(a-c)*b‖+‖c*(b-d)‖ := norm_add_le _ _
    _ = _ := by rw [norm_mul, norm_mul, hc, hb, one_mul, mul_one]

theorem word_difference (z v : Fin 4 → ℂ)
    (hz : ∀ i, ‖z i‖=1) (hv : ∀ i, ‖v i‖=1)
    (w : List (Fin 4 × Bool)) :
    ‖word z w - word v w‖ ≤ wordCost (fun i => ‖z i-v i‖) w := by
  induction w with
  | nil => simp [word,wordCost]
  | cons p w ih =>
    change ‖letter z p*word z w-letter v p*word v w‖ ≤
      ‖z p.1-v p.1‖+wordCost (fun i => ‖z i-v i‖) w
    have h := unit_product_difference (letter z p) (word z w)
      (letter v p) (word v w) (letter_unit v hv p) (word_unit z hz w)
    rw [letter_difference] at h
    exact h.trans (add_le_add (le_refl _) ih)

def signedWord (z : Fin 4 → ℂ) (p : Bool × List (Fin 4 × Bool)) : ℂ :=
  if p.1 then -word z p.2 else word z p.2
def wordPolynomial (z : Fin 4 → ℂ) (ps : List (Bool × List (Fin 4 × Bool))) : ℂ :=
  (ps.map (signedWord z)).sum
def polynomialCost (e : Fin 4 → ℝ) (ps : List (Bool × List (Fin 4 × Bool))) : ℝ :=
  (ps.map (fun p => wordCost e p.2)).sum

theorem signedWord_difference (z v : Fin 4 → ℂ)
    (hz : ∀ i, ‖z i‖=1) (hv : ∀ i, ‖v i‖=1)
    (p : Bool × List (Fin 4 × Bool)) :
    ‖signedWord z p - signedWord v p‖ ≤ wordCost (fun i => ‖z i-v i‖) p.2 := by
  unfold signedWord
  split
  · rw [show -word z p.2 - -word v p.2 = -(word z p.2-word v p.2) by ring,
      norm_neg]
    exact word_difference z v hz hv p.2
  · exact word_difference z v hz hv p.2

theorem wordPolynomial_difference (z v : Fin 4 → ℂ)
    (hz : ∀ i, ‖z i‖=1) (hv : ∀ i, ‖v i‖=1)
    (ps : List (Bool × List (Fin 4 × Bool))) :
    ‖wordPolynomial z ps - wordPolynomial v ps‖ ≤
      polynomialCost (fun i => ‖z i-v i‖) ps := by
  induction ps with
  | nil => simp [wordPolynomial,polynomialCost]
  | cons p ps ih =>
    change ‖(signedWord z p+wordPolynomial z ps)-
        (signedWord v p+wordPolynomial v ps)‖ ≤
      wordCost (fun i => ‖z i-v i‖) p.2+polynomialCost (fun i => ‖z i-v i‖) ps
    calc
      _ = ‖(signedWord z p-signedWord v p)+
        (wordPolynomial z ps-wordPolynomial v ps)‖ := by congr 1; ring
      _ ≤ ‖signedWord z p-signedWord v p‖+
        ‖wordPolynomial z ps-wordPolynomial v ps‖ := norm_add_le _ _
      _ ≤ _ := add_le_add (signedWord_difference z v hz hv p) ih

end
end Seed0024Mathematical20261007
#print axioms Seed0024Mathematical20261007.wordPolynomial_difference
