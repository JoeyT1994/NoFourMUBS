import KarlssonRawCompiler
import KarlssonEnclosureProvider
set_option autoImplicit false

namespace Mub6.Classification.KarlssonLifted
open Complex Hadamard6 Mub6 Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.KarlssonCover Mub6.Classification.KarlssonCompiler
open Mub6.Classification.CarrierIntervals Mub6.Numerical.CircleCharts
noncomputable section
set_option maxHeartbeats 2000000

/-- A phase may always be put on the unsigned half-circle by pair gauge.
No square root, inverse Mobius map, or choice of a nonzero denominator occurs. -/
theorem unit_phase_lift {z : ℂ} (hz : normSq z = 1) :
    ∃ y : ℝ, -1 ≤ y ∧ y ≤ 1 ∧ z^2 = (signedCircle false y)^2 := by
  obtain ⟨b,y,hlo,hhi,he⟩ := unit_circle_covered hz
  refine ⟨y,hlo,hhi,?_⟩
  rw [he]
  cases b <;> simp [signedCircle,signValue]

def liftedMatrix (negative : Bool) (s q : ℝ) (y : Fin 4 → ℝ) : Mat6 :=
  karlssonRawMatrix (uncompactT s) (signedCircle negative q)
    (signedCircle false (y 0)) (signedCircle false (y 1))
    (signedCircle false (y 2)) (signedCircle false (y 3))

/-- Six coordinates suffice for this outer chart: two core coordinates and
four explicit phases. The old free phase need not be retained as a seventh
coordinate. Physical Hadamard constraints still restrict these coordinates. -/
theorem reduced_lift_exists (label : ReducedLabel) (x : Fin 3 → ℝ)
    (hH : IsHadamard (reducedMatrix label x)) :
    ∃ y : Fin 4 → ℝ, (∀ i, -1 ≤ y i ∧ y i ≤ 1) ∧
      Equivalent (reducedMatrix label x) (liftedMatrix label.2 (x 0) (x 1) y) := by
  have hu : ∀ i, normSq (rawPhases label x i) = 1 := raw_phases_unit hH
  have each (i : Fin 4) := unit_phase_lift (hu i)
  choose y hlo hhi he using each
  refine ⟨y,fun i => ⟨hlo i,hhi i⟩,?_⟩
  exact equal_squares_equivalent _ _ _ (fun i => signedCircle false (y i)) he

structure LiftedInput where
  negative : Bool
  core : Fin 2 → Interval
  phases : Fin 4 → Interval
  sqrt3 : Interval

def LiftedInput.p (c : LiftedInput) : RationalRectangle :=
  clipUnit (circleBox c.negative (c.core 1))
def LiftedInput.A (c : LiftedInput) : Boxes2 := coreABox (c.core 0) c.p c.sqrt3
def LiftedInput.B (c : LiftedInput) : Boxes2 := coreBBox (c.core 0) c.p c.sqrt3
def LiftedInput.phaseBoxes (c : LiftedInput) : Fin 4 → RationalRectangle :=
  fun i => clipUnit (circleBox false (c.phases i))
def LiftedInput.output (c : LiftedInput) : CarrierRegion :=
  clipCarrier (rawBoxes c.A c.B c.phaseBoxes)

/-- Direct whole-matrix enclosure, including the degenerate Mobius loci.
The only denominators in this compiler are circle denominators >= 1 and
the core denominator >= 1/2. No denominator guard can discard a phase. -/
theorem lifted_compiler_sound (c : LiftedInput) (hr : sqrt3Valid c.sqrt3)
    {s q : ℝ} {y : Fin 4 → ℝ}
    (hs : Mem (c.core 0) s) (hq : Mem (c.core 1) q)
    (hy : ∀ i, Mem (c.phases i) (y i)) (h0 : 0 < s) (h1 : s < 1)
    (hH : IsHadamard (liftedMatrix c.negative s q y)) :
    CarrierBox c.output (ClassificationCover.toNumerical (liftedMatrix c.negative s q y)) := by
  apply clipCarrier_sound _ (ClassificationCover.numerical_of_public hH).1
  have hp := clipUnit_sound (circleBox_sound c.negative hq) (signedCircle_normSq _ _)
  have ha := coreABox_sound hs hp (signedCircle_normSq _ _) h0 h1 hr
  have hb := coreBBox_sound hs hp (signedCircle_normSq _ _) h0 h1 hr
  have hz (i : Fin 4) := clipUnit_sound (circleBox_sound false (hy i)) (signedCircle_normSq _ _)
  change CarrierBox (rawBoxes c.A c.B c.phaseBoxes)
    (ClassificationCover.toNumerical (karlssonRawMatrix (uncompactT s)
      (signedCircle c.negative q) (signedCircle false (y 0)) (signedCircle false (y 1))
      (signedCircle false (y 2)) (signedCircle false (y 3))))
  rw [raw_to_literal]
  exact rawBoxes_sound ha hb hz

abbrev PhaseCell (depth : ℕ) := Fin 4 →
  {q : ClassificationCover.Interval // q ∈ grid depth (-1)}

theorem phase_cells_complete (depth : ℕ) {y : Fin 4 → ℝ}
    (hy : ∀ i, -1 ≤ y i ∧ y i ≤ 1) :
    ∃ cell : PhaseCell depth, ∀ i, ClassificationCover.Contains (cell i).val (y i) := by
  have each (i : Fin 4) : ∃ q, q ∈ grid depth (-1) ∧ ClassificationCover.Contains q (y i) := by
    obtain ⟨q,hq,hmem⟩ := ClassificationCover.dyadicGrid_complete depth (-1) 1 (y i)
      (by simpa using hy i)
    exact ⟨q,by simpa [grid] using hq,hmem⟩
  choose q hq hm using each
  exact ⟨fun i => ⟨q i,hq i⟩,hm⟩

/-- A safe fallback for any raw chart and any requested phase depth. Every
phase cell is retained; the whole quartet is transported with the pair gauge. -/
theorem physical_lifted_cover (depth : ℕ) {H : BasisMatrix}
    (hH : OccursAsQuartetEdge H) (label : ReducedLabel) (x : Fin 3 → ℝ)
    (he : Equivalent (ClassificationCover.toPublic (phaseScale (Real.sqrt 6) H))
      (reducedMatrix label x)) :
    ∃ y : Fin 4 → ℝ, ∃ cell : PhaseCell depth,
      (∀ i, ClassificationCover.Contains (cell i).val (y i)) ∧
      OccursAsQuartetEdge (phaseScale (Real.sqrt 6)⁻¹
        (ClassificationCover.toNumerical (liftedMatrix label.2 (x 0) (x 1) y))) := by
  have hp : IsHadamard (ClassificationCover.toPublic (phaseScale (Real.sqrt 6) H)) := by
    rcases hH with ⟨B,hB,a,b,hab,rfl⟩
    exact ClassificationCover.public_of_boundary_phase (actual_edge_sqrt_six_phaseHadamard hB a b hab)
  obtain ⟨y,hy,hey⟩ := reduced_lift_exists label x ((equivalent_isHadamard_iff he).mp hp)
  obtain ⟨cell,hcell⟩ := phase_cells_complete depth hy
  exact ⟨y,cell,hcell,ClassificationCover.normalized_public_representative_occurs hH
    (equivalent_trans he hey)⟩

#print axioms unit_phase_lift
#print axioms reduced_lift_exists
#print axioms lifted_compiler_sound
#print axioms phase_cells_complete
#print axioms physical_lifted_cover
end
end Mub6.Classification.KarlssonLifted
