import KarlssonLedgerEnclosures
import KarlssonEnclosureProvider

set_option autoImplicit false

set_option maxHeartbeats 0

set_option maxRecDepth 16384

namespace KarlssonLedgerCell74452479c531d33f

open Hadamard6 Mub6.Numerical Mub6.Numerical.IntervalKernel

open Mub6.Classification.KarlssonCompiler Mub6.Classification.KarlssonCover

open Mub6.Classification.KarlssonLedger
noncomputable section

def input : SeamInput := ⟨(false,true,false,true),![⟨-1,1⟩,⟨-1,1⟩],⟨(14529495/8388608),(29058991/16777216)⟩⟩

def carrier : CarrierRegion := ![![⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩],![⟨1,1,0,0⟩,⟨-1,-1,0,0⟩,⟨0,1,-1,1⟩,⟨-1,0,-1,1⟩,⟨-1,0,-1,1⟩,⟨0,1,-1,1⟩],![⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨(-8388609/16777216),(-8388607/16777216),(-1816187/2097152),(-14529495/16777216)⟩,⟨(-8388609/16777216),(-8388607/16777216),(-1816187/2097152),(-14529495/16777216)⟩,⟨(-8388609/16777216),(-8388607/16777216),(7264747/8388608),(14529497/16777216)⟩,⟨(-8388609/16777216),(-8388607/16777216),(7264747/8388608),(14529497/16777216)⟩],![⟨1,1,0,0⟩,⟨-1,-1,0,0⟩,⟨-1,(1816187/2097152),-1,(8388609/16777216)⟩,⟨(-1816187/2097152),1,(-8388609/16777216),1⟩,⟨(-14529497/16777216),1,-1,(8388609/16777216)⟩,⟨-1,(14529497/16777216),(-8388609/16777216),1⟩],![⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨(-8388609/16777216),(-8388607/16777216),(7264747/8388608),(14529497/16777216)⟩,⟨(-8388609/16777216),(-8388607/16777216),(7264747/8388608),(14529497/16777216)⟩,⟨(-8388609/16777216),(-8388607/16777216),(-1816187/2097152),(-14529495/16777216)⟩,⟨(-8388609/16777216),(-8388607/16777216),(-1816187/2097152),(-14529495/16777216)⟩],![⟨1,1,0,0⟩,⟨-1,-1,0,0⟩,⟨-1,(14529497/16777216),(-8388609/16777216),1⟩,⟨(-14529497/16777216),1,-1,(8388609/16777216)⟩,⟨(-1816187/2097152),1,(-8388609/16777216),1⟩,⟨-1,(1816187/2097152),-1,(8388609/16777216)⟩]]

theorem sqrt_valid : sqrt3Valid input.sqrt3 := by decide +kernel

theorem bounds_0_0 : RectangleIncludes (input.output 0 0) (carrier 0 0) := by decide +kernel

theorem bounds_0_1 : RectangleIncludes (input.output 0 1) (carrier 0 1) := by decide +kernel

theorem bounds_0_2 : RectangleIncludes (input.output 0 2) (carrier 0 2) := by decide +kernel

theorem bounds_0_3 : RectangleIncludes (input.output 0 3) (carrier 0 3) := by decide +kernel

theorem bounds_0_4 : RectangleIncludes (input.output 0 4) (carrier 0 4) := by decide +kernel

theorem bounds_0_5 : RectangleIncludes (input.output 0 5) (carrier 0 5) := by decide +kernel

theorem bounds_1_0 : RectangleIncludes (input.output 1 0) (carrier 1 0) := by decide +kernel

theorem bounds_1_1 : RectangleIncludes (input.output 1 1) (carrier 1 1) := by decide +kernel

theorem bounds_1_2 : RectangleIncludes (input.output 1 2) (carrier 1 2) := by decide +kernel

theorem bounds_1_3 : RectangleIncludes (input.output 1 3) (carrier 1 3) := by decide +kernel

theorem bounds_1_4 : RectangleIncludes (input.output 1 4) (carrier 1 4) := by decide +kernel

theorem bounds_1_5 : RectangleIncludes (input.output 1 5) (carrier 1 5) := by decide +kernel

theorem bounds_2_0 : RectangleIncludes (input.output 2 0) (carrier 2 0) := by decide +kernel

theorem bounds_2_1 : RectangleIncludes (input.output 2 1) (carrier 2 1) := by decide +kernel

theorem bounds_2_2 : RectangleIncludes (input.output 2 2) (carrier 2 2) := by decide +kernel

theorem bounds_2_3 : RectangleIncludes (input.output 2 3) (carrier 2 3) := by decide +kernel

theorem bounds_2_4 : RectangleIncludes (input.output 2 4) (carrier 2 4) := by decide +kernel

theorem bounds_2_5 : RectangleIncludes (input.output 2 5) (carrier 2 5) := by decide +kernel

theorem bounds_3_0 : RectangleIncludes (input.output 3 0) (carrier 3 0) := by decide +kernel

theorem bounds_3_1 : RectangleIncludes (input.output 3 1) (carrier 3 1) := by decide +kernel

theorem bounds_3_2 : RectangleIncludes (input.output 3 2) (carrier 3 2) := by decide +kernel

theorem bounds_3_3 : RectangleIncludes (input.output 3 3) (carrier 3 3) := by decide +kernel

theorem bounds_3_4 : RectangleIncludes (input.output 3 4) (carrier 3 4) := by decide +kernel

theorem bounds_3_5 : RectangleIncludes (input.output 3 5) (carrier 3 5) := by decide +kernel

theorem bounds_4_0 : RectangleIncludes (input.output 4 0) (carrier 4 0) := by decide +kernel

theorem bounds_4_1 : RectangleIncludes (input.output 4 1) (carrier 4 1) := by decide +kernel

theorem bounds_4_2 : RectangleIncludes (input.output 4 2) (carrier 4 2) := by decide +kernel

theorem bounds_4_3 : RectangleIncludes (input.output 4 3) (carrier 4 3) := by decide +kernel

theorem bounds_4_4 : RectangleIncludes (input.output 4 4) (carrier 4 4) := by decide +kernel

theorem bounds_4_5 : RectangleIncludes (input.output 4 5) (carrier 4 5) := by decide +kernel

theorem bounds_5_0 : RectangleIncludes (input.output 5 0) (carrier 5 0) := by decide +kernel

theorem bounds_5_1 : RectangleIncludes (input.output 5 1) (carrier 5 1) := by decide +kernel

theorem bounds_5_2 : RectangleIncludes (input.output 5 2) (carrier 5 2) := by decide +kernel

theorem bounds_5_3 : RectangleIncludes (input.output 5 3) (carrier 5 3) := by decide +kernel

theorem bounds_5_4 : RectangleIncludes (input.output 5 4) (carrier 5 4) := by decide +kernel

theorem bounds_5_5 : RectangleIncludes (input.output 5 5) (carrier 5 5) := by decide +kernel

theorem output_valid : ∀ i j, RectangleIncludes (input.output i j) (carrier i j) := by

  intro i j

  fin_cases i <;> fin_cases j

  · exact bounds_0_0

  · exact bounds_0_1

  · exact bounds_0_2

  · exact bounds_0_3

  · exact bounds_0_4

  · exact bounds_0_5

  · exact bounds_1_0

  · exact bounds_1_1

  · exact bounds_1_2

  · exact bounds_1_3

  · exact bounds_1_4

  · exact bounds_1_5

  · exact bounds_2_0

  · exact bounds_2_1

  · exact bounds_2_2

  · exact bounds_2_3

  · exact bounds_2_4

  · exact bounds_2_5

  · exact bounds_3_0

  · exact bounds_3_1

  · exact bounds_3_2

  · exact bounds_3_3

  · exact bounds_3_4

  · exact bounds_3_5

  · exact bounds_4_0

  · exact bounds_4_1

  · exact bounds_4_2

  · exact bounds_4_3

  · exact bounds_4_4

  · exact bounds_4_5

  · exact bounds_5_0

  · exact bounds_5_1

  · exact bounds_5_2

  · exact bounds_5_3

  · exact bounds_5_4

  · exact bounds_5_5

theorem physical_enclosure {x : Fin 2 → ℝ}
    (hx : ∀ i, Mem (input.parameters i) (x i))
    (hH : IsHadamard (seamMatrix input.label x)) :
    CarrierBox carrier (ClassificationCover.toNumerical (seamMatrix input.label x)) :=
  seam_export_sound input sqrt_valid carrier output_valid hx hH

#print axioms sqrt_valid

#print axioms output_valid

#print axioms physical_enclosure

theorem encloses : Encloses (seamJob input) carrier :=
  seam_output_encloses input sqrt_valid carrier output_valid

#print axioms encloses

end

end KarlssonLedgerCell74452479c531d33f
