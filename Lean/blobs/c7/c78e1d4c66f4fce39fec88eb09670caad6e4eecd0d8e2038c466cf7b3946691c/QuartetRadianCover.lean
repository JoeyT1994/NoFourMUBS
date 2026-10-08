import ClosedBoxForest
import Mub6.Basic

/-! A literal four-basis frontend for exact closed rational angle forests.
The physical quartet definition is imported unchanged. All four bases survive
normalization. No Hadamard classification or numerical ray-cover premise is
used to construct the normalized point and its angle representative. -/
set_option autoImplicit false
namespace Mub6.GlobalBoxCover20261006
open Mub6
noncomputable section

def phaseOverlap (B C : BasisMatrix) : BasisMatrix :=
  fun i j => (Real.sqrt 6 : ℂ) * overlap B C i j

theorem phaseOverlap_normSq_one {B C : BasisMatrix} (h : IsUnbiased B C)
    (i j : Fin 6) : Complex.normSq (phaseOverlap B C i j) = 1 := by
  have hs : Real.sqrt 6 * Real.sqrt 6 = 6 := Real.mul_self_sqrt (by norm_num)
  rw [phaseOverlap, Complex.normSq_mul, Complex.normSq_ofReal, hs, h i j]
  norm_num

theorem phaseOverlap_norm_one {B C : BasisMatrix} (h : IsUnbiased B C)
    (i j : Fin 6) : ‖phaseOverlap B C i j‖ = 1 := by
  have he := phaseOverlap_normSq_one h i j
  rw [Complex.normSq_eq_norm_sq] at he
  nlinarith [norm_nonneg (phaseOverlap B C i j)]

def dephase (H : BasisMatrix) : BasisMatrix :=
  fun i j => star (H i 0) * H i j * star (H 0 j) * H 0 0

theorem dephase_unit (H : BasisMatrix) (hu : ∀ i j, ‖H i j‖ = 1) :
    ∀ i j, ‖dephase H i j‖ = 1 := by
  intro i j
  simp [dephase, norm_mul, hu]

theorem dephase_first_row (H : BasisMatrix)
    (hu : ∀ i j, Complex.normSq (H i j) = 1) : ∀ j, dephase H 0 j = 1 := by
  intro j
  have h0 : star (H 0 0) * H 0 0 = 1 := by
    change (starRingEnd ℂ) (H 0 0) * H 0 0 = 1
    rw [← Complex.normSq_eq_conj_mul_self, hu 0 0]; rfl
  have hj : star (H 0 j) * H 0 j = 1 := by
    change (starRingEnd ℂ) (H 0 j) * H 0 j = 1
    rw [← Complex.normSq_eq_conj_mul_self, hu 0 j]; rfl
  calc
    dephase H 0 j = (star (H 0 0) * H 0 0) * (star (H 0 j) * H 0 j) := by
      unfold dephase; ring
    _ = 1 := by rw [h0,hj]; ring

theorem dephase_first_column (H : BasisMatrix)
    (hu : ∀ i j, Complex.normSq (H i j) = 1) : ∀ i, dephase H i 0 = 1 := by
  intro i
  have h0 : star (H 0 0) * H 0 0 = 1 := by
    change (starRingEnd ℂ) (H 0 0) * H 0 0 = 1
    rw [← Complex.normSq_eq_conj_mul_self, hu 0 0]; rfl
  have hi : star (H i 0) * H i 0 = 1 := by
    change (starRingEnd ℂ) (H i 0) * H i 0 = 1
    rw [← Complex.normSq_eq_conj_mul_self, hu i 0]; rfl
  calc
    dephase H i 0 = (star (H i 0) * H i 0) * (star (H 0 0) * H 0 0) := by
      unfold dephase; ring
    _ = 1 := by rw [h0,hi]; ring

def quartetRayPhases (B : Fin 4 → BasisMatrix) (a : Fin 4) (j : Fin 6) : ℂ :=
  if a = 0 then phaseOverlap (B 0) (B 1) j 0
  else if a = 1 then star (phaseOverlap (B 0) (B 1) 0 j) * phaseOverlap (B 0) (B 1) 0 0
  else 1

def dephasedQuartet (B : Fin 4 → BasisMatrix) : Fin 4 → BasisMatrix :=
  fun a => rephase (fun _ => 1) (quartetRayPhases B a) (B a)

theorem quartetRayPhases_unit {B : Fin 4 → BasisMatrix} (hB : IsMUBQuartet B) :
    ∀ a j, Complex.normSq (quartetRayPhases B a j) = 1 := by
  have h := phaseOverlap_normSq_one (hB.2 0 1 (by decide))
  intro a j
  by_cases h0 : a = 0
  · simp [quartetRayPhases, h0, h]
  · by_cases h1 : a = 1
    · simp [quartetRayPhases, h0, h1, Complex.normSq_mul, h]
    · simp [quartetRayPhases, h0, h1]

theorem dephasedQuartet_isMUB {B : Fin 4 → BasisMatrix} (hB : IsMUBQuartet B) :
    IsMUBQuartet (dephasedQuartet B) :=
  quartet_rephase hB (fun _ => 1) (quartetRayPhases B) (by intro r; simp)
    (quartetRayPhases_unit hB)

theorem dephasedQuartet_phaseOverlap (B : Fin 4 → BasisMatrix) :
    phaseOverlap (dephasedQuartet B 0) (dephasedQuartet B 1) =
      dephase (phaseOverlap (B 0) (B 1)) := by
  funext i j
  unfold phaseOverlap dephasedQuartet
  rw [overlap_rephase _ _ _ _ _ (by intro r; simp)]
  simp only [quartetRayPhases, show (0 : Fin 4) = 0 from rfl, if_true,
    show (1 : Fin 4) ≠ 0 from by decide, if_false, show (1 : Fin 4) = 1 from rfl]
  unfold dephase phaseOverlap
  ring

/-- The normalized carrier is still an actual edge of a complete quartet,
with first row and column one and all 36 entries unit modulus. -/
theorem quartet_has_dephased_phase_edge {B : Fin 4 → BasisMatrix}
    (hB : IsMUBQuartet B) :
    ∃ D : Fin 4 → BasisMatrix, IsMUBQuartet D ∧
      (∀ i j, ‖phaseOverlap (D 0) (D 1) i j‖ = 1) ∧
      (∀ j, phaseOverlap (D 0) (D 1) 0 j = 1) ∧
      (∀ i, phaseOverlap (D 0) (D 1) i 0 = 1) := by
  refine ⟨dephasedQuartet B, dephasedQuartet_isMUB hB, ?_, ?_, ?_⟩
  · exact phaseOverlap_norm_one ((dephasedQuartet_isMUB hB).2 0 1 (by decide))
  · rw [dephasedQuartet_phaseOverlap]
    exact dephase_first_row _ (phaseOverlap_normSq_one (hB.2 0 1 (by decide)))
  · rw [dephasedQuartet_phaseOverlap]
    exact dephase_first_column _ (phaseOverlap_normSq_one (hB.2 0 1 (by decide)))

/-- Exact physical angle population. This is a definition, never an axiom or
a claim that a native certificate excludes this population. -/
def QuartetPhasePopulation (x : Fin 4 → ℝ) : Prop :=
  ∃ D : Fin 4 → BasisMatrix, IsMUBQuartet D ∧
    (∀ j, phaseOverlap (D 0) (D 1) 0 j = 1) ∧
    (∀ i, phaseOverlap (D 0) (D 1) i 0 = 1) ∧
    PhaseCoordinates (seedEntries (phaseOverlap (D 0) (D 1))) x

/-- Every hypothetical physical quartet reaches the closed rational root.
There are no nonextension, classification, positivity or cover hypotheses. -/
theorem quartet_reaches_radian_root {B : Fin 4 → BasisMatrix} (hB : IsMUBQuartet B) :
    Live QuartetPhasePopulation (radianRoot 4) := by
  obtain ⟨D,hD,hu,hr,hc⟩ := quartet_has_dephased_phase_edge hB
  obtain ⟨x,hx,hphase⟩ := unit_carrier_seed_in_root (phaseOverlap (D 0) (D 1)) hu
  exact ⟨x,⟨D,hD,hr,hc,hphase⟩,hx⟩

/-- The actual quartet survives every certified subdivision. Completeness is
proved from the tree constructors, rather than postulated for its frontier. -/
theorem quartet_reaches_radian_frontier
    (t : CertifiedTree QuartetPhasePopulation (radianRoot 4))
    {B : Fin 4 → BasisMatrix} (hB : IsMUBQuartet B) :
    ∃ c ∈ t.frontier, Live QuartetPhasePopulation c :=
  t.covers_live (quartet_reaches_radian_root hB)

theorem empty_radian_forest_noFour
    (t : CertifiedTree QuartetPhasePopulation (radianRoot 4))
    (he : t.frontier = []) : NoFourMUB6 := by
  rintro ⟨B,hB⟩
  exact t.empty_excludes he (quartet_reaches_radian_root hB)

#print axioms phaseOverlap_normSq_one
#print axioms phaseOverlap_norm_one
#print axioms dephase_unit
#print axioms dephase_first_row
#print axioms dephase_first_column
#print axioms quartetRayPhases_unit
#print axioms dephasedQuartet_isMUB
#print axioms dephasedQuartet_phaseOverlap
#print axioms quartet_has_dephased_phase_edge
#print axioms quartet_reaches_radian_root
#print axioms quartet_reaches_radian_frontier
#print axioms empty_radian_forest_noFour
#print empty_radian_forest_noFour
#print Mub6.NoFourMUB6
#print Mub6.IsMUBQuartet
end
end Mub6.GlobalBoxCover20261006
