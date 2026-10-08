import RadiusDependentGuards
import NativeBlockInverse

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.ChartExtension20261006
open scoped ComplexConjugate BigOperators Matrix
open NativeSigned20261006
noncomputable section

theorem pairHeight_square (s : ℂ) (hs : s ≠ 0) (hb : Complex.normSq s ≤ 4) :
    pairHeight s^2=1/Complex.normSq s-1/4 := by
  have hp := Complex.normSq_pos.mpr hs
  apply Real.sq_sqrt
  have hi : (1/4 : ℝ) ≤ 1/Complex.normSq s := by
    apply (le_div_iff₀ hp).2
    nlinarith
  linarith

/-- Forward soundness of the two-point constructor, complementing the
previous exhaustive physical-to-constructor theorem. -/
theorem pairPlus_unit (s : ℂ) (hs : s ≠ 0) (hb : Complex.normSq s ≤ 4) :
    Complex.normSq (pairPlus s)=1 := by
  have hp := Complex.normSq_pos.mpr hs
  have hf : Complex.normSq ((1/2 : ℂ)+Complex.I*(pairHeight s : ℂ))=
      1/4+pairHeight s^2 := by simp [Complex.normSq_apply]; ring
  unfold pairPlus
  rw [Complex.normSq_mul,hf,pairHeight_square s hs hb]
  field_simp
  <;> ring

theorem pairMinus_unit (s : ℂ) (hs : s ≠ 0) (hb : Complex.normSq s ≤ 4) :
    Complex.normSq (pairMinus s)=1 := by
  have hp := Complex.normSq_pos.mpr hs
  have hf : Complex.normSq ((1/2 : ℂ)-Complex.I*(pairHeight s : ℂ))=
      1/4+pairHeight s^2 := by simp [Complex.normSq_apply]; ring
  unfold pairMinus
  rw [Complex.normSq_mul,hf,pairHeight_square s hs hb]
  field_simp
  <;> ring

theorem pairPlus_add_pairMinus (s : ℂ) : pairPlus s+pairMinus s=s := by
  unfold pairPlus pairMinus
  ring

def anchoredSum (S v : ℂ) : ℂ := S*conj v-1

theorem anchoredSum_norm_bounds (S v : ℂ) (hv : Complex.normSq v=1)
    (r : ℝ) (hS : ‖S‖ ≤ 2*r) :
    1-2*r ≤ ‖anchoredSum S v‖ ∧ ‖anchoredSum S v‖ ≤ 1+2*r := by
  have hvn : ‖v‖=1 := by
    rw [Complex.normSq_eq_norm_sq] at hv
    nlinarith [norm_nonneg v]
  have hl := norm_sub_norm_le (1:ℂ) (S*conj v)
  have hu := norm_sub_le (S*conj v) (1:ℂ)
  simp only [norm_one,norm_mul,Complex.norm_conj,hvn,mul_one] at hl hu
  rw [norm_sub_rev] at hl
  dsimp [anchoredSum]
  constructor <;> linarith

/-- Exact side-constructor guards from a small actual row/column sum.
Binding that sum bound to every angular seed point is separate work. -/
theorem anchoredSum_guards (S v : ℂ) (hv : Complex.normSq v=1)
    (r : ℝ) (hS : ‖S‖ ≤ 2*r) (hr : r ≤ radiusEnvelope) :
    (89/100:ℝ) < ‖anchoredSum S v‖ ∧ anchoredSum S v ≠ 0 ∧
      Complex.normSq (anchoredSum S v) < 16/13 := by
  have hb := anchoredSum_norm_bounds S v hv r hS
  have hlo : (89/100:ℝ) < ‖anchoredSum S v‖ :=
    lt_of_lt_of_le (side_sum_guard r hr) hb.1
  have hn : anchoredSum S v ≠ 0 := by
    apply norm_pos_iff.mp
    linarith
  have hu : ‖anchoredSum S v‖ ≤ (5501/5000:ℝ) := by
    dsimp [radiusEnvelope] at hr
    linarith [hb.2]
  refine ⟨hlo,hn,?_⟩
  rw [Complex.normSq_eq_norm_sq]
  nlinarith [norm_nonneg (anchoredSum S v)]

theorem anchoredSum_height_lower (S v : ℂ) (hv : Complex.normSq v=1)
    (r : ℝ) (hS : ‖S‖ ≤ 2*r) (hr : r ≤ radiusEnvelope) :
    (3/4:ℝ) < pairHeight (anchoredSum S v) := by
  obtain ⟨_,hn,hb⟩ := anchoredSum_guards S v hv r hS hr
  have hp := Complex.normSq_pos.mpr hn
  have hi : (13/16:ℝ) < 1/Complex.normSq (anchoredSum S v) := by
    apply (lt_div_iff₀ hp).2
    nlinarith
  have hs := pairHeight_square (anchoredSum S v) hn (by linarith)
  have hz : 0 ≤ pairHeight (anchoredSum S v) := Real.sqrt_nonneg _
  nlinarith

def sideSum (E : Mat3) (i : Fin 3) : ℂ := -(∑ j : Fin 3, E i j)
def sideArgument (E : Mat3) (anchor : Fin 3 → ℂ) (i : Fin 3) : ℂ :=
  anchoredSum (sideSum E i) (anchor i)

/-- Literal exact-complex sideK: row 1 uses minus/plus, row 2 plus/minus. -/
def constructedSideK (E : Mat3) (anchor : Fin 3 → ℂ) : Mat3 := fun i j =>
  if i=0 ∨ j=0 then 1 else
    if i=j then pairMinus (sideArgument E anchor i) else pairPlus (sideArgument E anchor i)

theorem constructedSideK_unit (E : Mat3) (anchor : Fin 3 → ℂ)
    (hguard : ∀ i : Fin 3, i ≠ 0 →
      sideArgument E anchor i ≠ 0 ∧ Complex.normSq (sideArgument E anchor i) ≤ 4)
    (i j : Fin 3) : Complex.normSq (constructedSideK E anchor i j)=1 := by
  by_cases hz : i=0 ∨ j=0
  · simp [constructedSideK,hz]
  · have hi : i ≠ 0 := fun h => hz (Or.inl h)
    obtain ⟨hn,hb⟩ := hguard i hi
    by_cases hij : i=j
    · simpa only [constructedSideK,if_neg hz,if_pos hij] using
        pairMinus_unit (sideArgument E anchor i) hn hb
    · simpa only [constructedSideK,if_neg hz,if_neg hij] using
        pairPlus_unit (sideArgument E anchor i) hn hb

theorem constructedSideK_unit_from_sums (E : Mat3) (anchor : Fin 3 → ℂ)
    (hv : ∀ i : Fin 3, Complex.normSq (anchor i)=1) (r : ℝ)
    (hS : ∀ i : Fin 3, i ≠ 0 → ‖sideSum E i‖ ≤ 2*r)
    (hr : r ≤ radiusEnvelope) (i j : Fin 3) :
    Complex.normSq (constructedSideK E anchor i j)=1 := by
  apply constructedSideK_unit
  intro k hk
  obtain ⟨_,hn,hb⟩ := anchoredSum_guards (sideSum E k) (anchor k) (hv k) r (hS k hk) hr
  exact ⟨hn,by dsimp [sideArgument]; linarith⟩

end
end Centiradian20261006.ChartExtension20261006

#print axioms Centiradian20261006.ChartExtension20261006.pairHeight_square
#print axioms Centiradian20261006.ChartExtension20261006.pairPlus_unit
#print axioms Centiradian20261006.ChartExtension20261006.pairMinus_unit
#print axioms Centiradian20261006.ChartExtension20261006.pairPlus_add_pairMinus
#print axioms Centiradian20261006.ChartExtension20261006.anchoredSum_norm_bounds
#print axioms Centiradian20261006.ChartExtension20261006.anchoredSum_guards
#print axioms Centiradian20261006.ChartExtension20261006.anchoredSum_height_lower
#print axioms Centiradian20261006.ChartExtension20261006.constructedSideK_unit
#print axioms Centiradian20261006.ChartExtension20261006.constructedSideK_unit_from_sums
