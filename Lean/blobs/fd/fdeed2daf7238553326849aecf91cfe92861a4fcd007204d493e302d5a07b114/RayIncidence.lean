import RationalCircleCharts
import Mathlib.LinearAlgebra.Matrix.SemiringInverse
import Mathlib.Analysis.Complex.Basic
import Mathlib.Topology.Order.Compact

/-! Physical, parameter-preserving ray and third-basis incidence.
The carrier is arbitrary. No assertion of emptiness or universal finiteness is made.
-/
namespace Mub6.Classification.Rays
open Mub6 Mub6.Numerical Mub6.Numerical.CircleCharts
open Matrix
open scoped BigOperators
noncomputable section

/-- The column Gram condition implies the row Gram condition, without adding
any hypothesis on a reconstruction chart. -/
theorem phaseHadamard_rowGram {H : Matrix (Fin 6) (Fin 6) ℂ} (hH : PhaseHadamard H) :
    H * Hᴴ = (6 : ℂ) • (1 : Matrix (Fin 6) (Fin 6) ℂ) := by
  have hleft : ((1 / 6 : ℂ) • Hᴴ) * H = 1 := by
    rw [Matrix.smul_mul, hH.2, smul_smul]
    norm_num
  have hright := Matrix.mul_eq_one_comm.mp hleft
  rw [Matrix.mul_smul] at hright
  have h := congrArg (fun A : Matrix (Fin 6) (Fin 6) ℂ => (6 : ℂ) • A) hright
  simpa only [smul_smul, show (6 : ℂ) * (1 / 6) = 1 by norm_num, one_smul] using h

theorem rawOverlap_self (z : Vector) :
    rawOverlap z z = ((∑ r, Complex.normSq (z r) : ℝ) : ℂ) := by
  simp only [rawOverlap, Complex.ofReal_sum]
  apply Finset.sum_congr rfl
  intro r _
  exact Complex.normSq_eq_conj_mul_self.symm

/-- Exact physical Parseval identity, prior to any restriction to phase rays. -/
theorem carrier_parseval {H : BasisMatrix} (hH : PhaseHadamard H) (z : Vector) :
    ∑ k, Complex.normSq (carrierAmplitude H z k) =
      6 * ∑ r, Complex.normSq (z r) := by
  have h : rawOverlap (Hᴴ *ᵥ z) (Hᴴ *ᵥ z) = (6 : ℂ) * rawOverlap z z := by
    change star (Hᴴ *ᵥ z) ⬝ᵥ (Hᴴ *ᵥ z) = (6 : ℂ) * (star z ⬝ᵥ z)
    rw [star_mulVec, conjTranspose_conjTranspose, ← dotProduct_mulVec,
      Matrix.mulVec_mulVec, phaseHadamard_rowGram hH, Matrix.smul_mulVec,
      Matrix.one_mulVec, dotProduct_smul]
    rfl
  rw [rawOverlap_self, rawOverlap_self] at h
  apply Complex.ofReal_injective
  push_cast
  simpa only [Complex.ofReal_sum] using h

theorem raw_unit_carrier_energy {H : BasisMatrix} (hH : PhaseHadamard H)
    {z : Vector} (hz : IsRawUnitRay z) :
    ∑ k, Complex.normSq (carrierAmplitude H z k) = 36 := by
  rw [carrier_parseval hH z]
  norm_num [hz.2]

/-- One equation is exactly redundant for every physical carrier, including
singular reconstruction strata. Here column zero is the omitted equation. -/
theorem common_ray_iff_five {H : BasisMatrix} (hH : PhaseHadamard H) (z : Vector) :
    IsRawCommonRay H z ↔ IsRawUnitRay z ∧
      ∀ k : Fin 5, Complex.normSq (carrierAmplitude H z k.succ) = 6 := by
  constructor
  · intro h
    exact ⟨h.1, fun k => h.2 k.succ⟩
  · rintro ⟨hz, hfive⟩
    refine ⟨hz, ?_⟩
    intro k
    refine Fin.cases ?_ (fun j => hfive j) k
    have he := raw_unit_carrier_energy hH hz
    rw [Fin.sum_univ_succ] at he
    simp only [hfive, Finset.sum_const, Finset.card_univ, Fintype.card_fin,
      nsmul_eq_mul] at he
    norm_num at he
    linarith

/-- Five real variables on a fixed signed circle chart, shared carrier H. -/
def residual (H : BasisMatrix) (signs : SignChart) (t : Parameters) (k : Fin 5) : ℝ :=
  Complex.normSq (carrierAmplitude H (chartRay signs t) k.succ) - 6

def InCube (t : Parameters) : Prop := ∀ j, -1 ≤ t j ∧ t j ≤ 1

def ChartIncidence (H : BasisMatrix) (signs : SignChart) (t : Parameters) : Prop :=
  InCube t ∧ ∀ k, residual H signs t k = 0

theorem chart_incidence_sound {H : BasisMatrix} (hH : PhaseHadamard H)
    {signs : SignChart} {t : Parameters} (ht : ChartIncidence H signs t) :
    IsRawCommonRay H (chartRay signs t) := by
  apply (common_ray_iff_five hH _).2
  refine ⟨chartRay_isRawUnitRay signs t, ?_⟩
  intro k
  have h := ht.2 k
  exact sub_eq_zero.mp h

theorem common_ray_chart_iff {H : BasisMatrix} (hH : PhaseHadamard H) (z : Vector) :
    IsRawCommonRay H z ↔ ∃ signs t,
      ChartIncidence H signs t ∧ z = chartRay signs t := by
  constructor
  · intro hz
    obtain ⟨s, t, ht, he⟩ := raw_ray_complete hz.1
    refine ⟨s, t, ⟨ht, ?_⟩, he⟩
    intro k
    dsimp [residual]
    rw [← he, hz.2 k.succ]
    exact sub_self 6
  · rintro ⟨s, t, ht, rfl⟩
    exact chart_incidence_sound hH ht

/-- The same parameter is retained throughout; no independent enclosure of
carrier entries is substituted for H(p). -/
theorem family_common_ray_chart_iff {P : Type*} (H : P → BasisMatrix)
    (physical : ∀ p, PhaseHadamard (H p)) (p : P) (z : Vector) :
    IsRawCommonRay (H p) z ↔ ∃ signs t,
      ChartIncidence (H p) signs t ∧ z = chartRay signs t :=
  common_ray_chart_iff (physical p) z

#print axioms phaseHadamard_rowGram
#print axioms carrier_parseval
#print axioms raw_unit_carrier_energy
#print axioms common_ray_iff_five
#print axioms chart_incidence_sound
#print axioms common_ray_chart_iff
#print axioms family_common_ray_chart_iff
end
end Mub6.Classification.Rays
