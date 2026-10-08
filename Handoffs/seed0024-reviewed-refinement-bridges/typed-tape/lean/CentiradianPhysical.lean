import Mathlib.Analysis.Complex.Trigonometric
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Fintype.Card
import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith

/-!
Direct physical foundations for the corrected centiradian target.
This file does not assert the local exclusion: the analytic and finite-cover
obligations are deliberately absent from the hypotheses of the target below.
The target is a proposition, not a theorem asserted by an axiom.
-/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace Centiradian20261006
open scoped BigOperators ComplexConjugate
noncomputable section

abbrev Mat6 := Fin 6 → Fin 6 → ℂ

/-- Exactly unit entries and HH* = 6I, in scalar form. -/
def Physical (H : Mat6) : Prop :=
  (∀ i j, Complex.normSq (H i j) = 1) ∧
  ∀ i j, (∑ k : Fin 6, H i k * conj (H j k)) = if i = j then 6 else 0

def Dephased (H : Mat6) : Prop := (∀ j, H 0 j = 1) ∧ (∀ i, H i 0 = 1)

def gramEntry (H : Mat6) (C : Finset (Fin 6)) (i j : Fin 6) : ℂ :=
  ∑ k ∈ C, H i k * conj (H j k)

def gramP (s t r : ℂ) : ℝ := Complex.normSq s + Complex.normSq t + Complex.normSq r
def gramJ (s t r : ℂ) : ℝ := 2 * (s * r * conj t).re
def gramW (s t r : ℂ) : ℝ :=
  Complex.normSq s * Complex.normSq t + Complex.normSq s * Complex.normSq r +
  Complex.normSq t * Complex.normSq r -
  Complex.normSq s * Complex.normSq t * Complex.normSq r

/-- Literal polynomial (1.1) of the corrected source. -/
def invariant (p J W : ℝ) : ℝ :=
  4 * (27 - 3*p + J)^2 * (9-p+J) -
    (W-(p-9)*(p-18)+(p-15)*J)^2

def gramInvariant (s t r : ℂ) : ℝ := invariant (gramP s t r) (gramJ s t r) (gramW s t r)

/-- The negative off-diagonal row Gram convention of source (1.1). -/
def cornerR (H : Mat6) (a b c : Fin 6) (C : Finset (Fin 6)) : ℝ :=
  gramInvariant (-gramEntry H C b a) (-gramEntry H C c a) (-gramEntry H C c b)

def leadingCols : Finset (Fin 6) := {0,1,2}
def leadingR (H : Mat6) : ℝ := cornerR H 0 1 2 leadingCols

/-- Increasing row triples and three-element column subsets enumerate precisely
the 20 by 20 positional corners. Non-strict comparison explicitly allows ties. -/
def Maximal (H : Mat6) : Prop :=
  ∀ (a b c : Fin 6), a < b → b < c → ∀ C : Finset (Fin 6), C.card = 3 →
    cornerR H a b c C ≤ leadingR H

theorem positional_corner_count :
    ((Finset.univ : Finset (Fin 6)).powersetCard 3).card ^ 2 = 400 := by
  norm_num [Finset.card_powersetCard]
  decide

def phaseTransform (H : Mat6) (α β : Fin 6 → ℂ) : Mat6 :=
  fun i j => α i * H i j * β j

/-- Actual row and column phase changes have exactly the expected effect on
the partial row Gram matrix. -/
theorem gramEntry_phaseTransform (H : Mat6) (α β : Fin 6 → ℂ)
    (hβ : ∀ k, Complex.normSq (β k) = 1) (C : Finset (Fin 6)) (i j : Fin 6) :
    gramEntry (phaseTransform H α β) C i j = (α i*conj (α j))*gramEntry H C i j := by
  unfold gramEntry phaseTransform
  calc
    (∑ k ∈ C, α i*H i k*β k*conj (α j*H j k*β k)) =
        ∑ k ∈ C, (α i*conj (α j))*(H i k*conj (H j k))*(β k*conj (β k)) := by
      apply Finset.sum_congr rfl
      intro k _
      simp only [map_mul]
      ring
    _ = (α i*conj (α j))*(∑ k ∈ C, H i k*conj (H j k)) := by
      simp only [Complex.mul_conj, hβ, Complex.ofReal_one, mul_one, Finset.mul_sum]

/-- The source invariant is invariant under three arbitrary unit row gauges. -/
theorem gramInvariant_rowPhase (s t r α₀ α₁ α₂ : ℂ)
    (h₀ : Complex.normSq α₀ = 1) (h₁ : Complex.normSq α₁ = 1)
    (h₂ : Complex.normSq α₂ = 1) :
    gramInvariant ((α₁*conj α₀)*s) ((α₂*conj α₀)*t) ((α₂*conj α₁)*r) =
      gramInvariant s t r := by
  have ht : ((α₁*conj α₀)*s)*((α₂*conj α₁)*r)*conj ((α₂*conj α₀)*t) =
      s*r*conj t := by
    calc
      _ = (α₀*conj α₀)*(α₁*conj α₁)*(α₂*conj α₂)*(s*r*conj t) := by
        simp [map_mul]
        <;> ring
      _ = s*r*conj t := by simp only [Complex.mul_conj, h₀, h₁, h₂,
        Complex.ofReal_one, one_mul, mul_one]
  unfold gramInvariant gramP gramW gramJ
  simp only [Complex.normSq_mul, Complex.normSq_conj, h₀, h₁, h₂, one_mul, ht]

/-- Dephasing preserves the actual positional score, independently of
Hadamard orthogonality or invertibility assumptions. -/
theorem cornerR_phaseTransform (H : Mat6) (α β : Fin 6 → ℂ)
    (hα : ∀ i, Complex.normSq (α i) = 1) (hβ : ∀ j, Complex.normSq (β j) = 1)
    (a b c : Fin 6) (C : Finset (Fin 6)) :
    cornerR (phaseTransform H α β) a b c C = cornerR H a b c C := by
  unfold cornerR
  rw [gramEntry_phaseTransform H α β hβ C b a,
    gramEntry_phaseTransform H α β hβ C c a,
    gramEntry_phaseTransform H α β hβ C c b]
  simp only [← mul_neg]
  exact gramInvariant_rowPhase _ _ _ _ _ _ (hα a) (hα b) (hα c)

theorem complement_card {C : Finset (Fin 6)} (hC : C.card = 3) : Cᶜ.card = 3 := by
  rw [Finset.card_compl, Fintype.card_fin, hC]

/-- Orthogonality on the full six columns flips every off-diagonal entry
when a set of columns is replaced by its complement. No dephasing is used. -/
theorem physical_gram_complement {H : Mat6} (hH : Physical H)
    (C : Finset (Fin 6)) {i j : Fin 6} (hij : i ≠ j) :
    gramEntry H Cᶜ i j = -gramEntry H C i j := by
  have hsum : gramEntry H C i j + gramEntry H Cᶜ i j = 0 := by
    unfold gramEntry
    rw [← Finset.sum_union disjoint_compl_right, Finset.union_compl]
    simpa [hij] using hH.2 i j
  exact eq_neg_of_add_eq_zero_left (by simpa only [add_comm] using hsum)

theorem gramP_neg (s t r : ℂ) : gramP (-s) (-t) (-r) = gramP s t r := by
  simp [gramP]

theorem gramW_neg (s t r : ℂ) : gramW (-s) (-t) (-r) = gramW s t r := by
  simp [gramW]

theorem gramJ_neg (s t r : ℂ) : gramJ (-s) (-t) (-r) = -gramJ s t r := by
  simp [gramJ]
  ring

/-- The sign of J changes, while p and W are unchanged. -/
theorem invariant_all_moments_neg (s t r : ℂ) :
    gramInvariant (-s) (-t) (-r) = invariant (gramP s t r) (-gramJ s t r) (gramW s t r) := by
  simp only [gramInvariant, gramP_neg, gramJ_neg, gramW_neg]

/-- Direct binding of the complementary-corner sign flip to an actual H. -/
theorem physical_corner_complement {H : Mat6} (hH : Physical H)
    (C : Finset (Fin 6)) {a b c : Fin 6} (hab : a < b) (hbc : b < c) :
    cornerR H a b c Cᶜ =
      invariant (gramP (-gramEntry H C b a) (-gramEntry H C c a) (-gramEntry H C c b))
        (-gramJ (-gramEntry H C b a) (-gramEntry H C c a) (-gramEntry H C c b))
        (gramW (-gramEntry H C b a) (-gramEntry H C c a) (-gramEntry H C c b)) := by
  unfold cornerR
  rw [physical_gram_complement hH C (ne_of_gt hab),
    physical_gram_complement hH C (ne_of_gt (lt_trans hab hbc)),
    physical_gram_complement hH C (ne_of_gt hbc)]
  exact invariant_all_moments_neg _ _ _

/-- The corrected necessary bound is on R of the complement, hence on the
polynomial with negative J. It is not an assumption that f(Q)^2 = R(Q). -/
theorem physical_maximal_complement_bound {H : Mat6} (hH : Physical H)
    (hm : Maximal H) (C : Finset (Fin 6)) (hC : C.card = 3)
    {a b c : Fin 6} (hab : a < b) (hbc : b < c) :
    invariant (gramP (-gramEntry H C b a) (-gramEntry H C c a) (-gramEntry H C c b))
      (-gramJ (-gramEntry H C b a) (-gramEntry H C c a) (-gramEntry H C c b))
      (gramW (-gramEntry H C b a) (-gramEntry H C c a) (-gramEntry H C c b)) ≤ leadingR H := by
  rw [← physical_corner_complement hH C hab hbc]
  exact hm a b c hab hbc Cᶜ (complement_card hC)

/-- The selected corner score agrees literally with the source dephased
four-entry formula. This proves the normalization binding for the invariant. -/
theorem dephased_leadingR {H : Mat6} (hH : Dephased H) :
    leadingR H = gramInvariant (-1-H 1 1-H 1 2) (-1-H 2 1-H 2 2)
      (-1-H 2 1*conj (H 1 1)-H 2 2*conj (H 1 2)) := by
  unfold leadingR cornerR gramEntry leadingCols
  simp [hH.1, hH.2]
  congr 1 <;> ring

def seedAngle (conjugateSeed : Bool) (i : Fin 4) : ℝ :=
  (if conjugateSeed then ![4,2,2,4] i else ![2,4,4,2] i) * Real.pi / 3

def seedEntry (H : Mat6) : Fin 4 → ℂ := ![H 1 1, H 1 2, H 2 1, H 2 2]

/-- Existence of circular lifts within a radius strictly less than pi.
The puncture excludes the exact seed, and the outer boundary is included. -/
def InPuncturedSeedBall (H : Mat6) (conjugateSeed : Bool) (radius : ℝ) : Prop :=
  ∃ u : Fin 4 → ℝ,
    (∀ i, seedEntry H i = Complex.exp (Complex.I * (seedAngle conjugateSeed i + u i))) ∧
    (∀ i, |u i| ≤ radius) ∧ (∃ i, u i ≠ 0)

/-- Exact physical theorem requested. This is a target definition only;
there is deliberately no theorem here asserting it before the missing
physical analytic and finite-certificate dependencies are checked. -/
def CentiradianExclusion : Prop :=
  ∀ H : Mat6, Physical H → Dephased H → Maximal H → 0 < leadingR H →
    ∀ conjugateSeed : Bool, InPuncturedSeedBall H conjugateSeed (1/100) → False

end
end Centiradian20261006

#print axioms Centiradian20261006.physical_gram_complement
#print axioms Centiradian20261006.positional_corner_count
#print axioms Centiradian20261006.cornerR_phaseTransform
#print axioms Centiradian20261006.physical_corner_complement
#print axioms Centiradian20261006.physical_maximal_complement_bound
#print axioms Centiradian20261006.dephased_leadingR
