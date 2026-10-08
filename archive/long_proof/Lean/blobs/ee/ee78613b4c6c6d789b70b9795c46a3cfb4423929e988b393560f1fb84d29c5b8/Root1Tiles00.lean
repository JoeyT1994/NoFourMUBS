import ParametricAngularLeaf
import Root1CertificateData
import Root1Leaves56
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace ShoulderRoot1Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
open Root0Angular20261003 (ArcCert TrigCert Holds turnPhase split_x split_y)
open ShoulderAngular20261003
open ShoulderRoot1Data20261003
theorem tile00 : LeafStatement cap moments EX EY hull0 hull1 ⟨0,(1/8)⟩ ⟨0,(1/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)

  exact (leaf1361 s t r ex ey hm hex hey)
#print axioms tile00
theorem tile01 : LeafStatement cap moments EX EY hull0 hull1 ⟨0,(1/8)⟩ ⟨(1/8),(1/4)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)

  exact (leaf1360 s t r ex ey hm hex hey)
#print axioms tile01
theorem tile02 : LeafStatement cap moments EX EY hull0 hull1 ⟨0,(1/8)⟩ ⟨(1/4),(3/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)

  exact (leaf1359 s t r ex ey hm hex hey)
#print axioms tile02
theorem tile03 : LeafStatement cap moments EX EY hull0 hull1 ⟨0,(1/8)⟩ ⟨(3/8),(1/2)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)

  exact (leaf1358 s t r ex ey hm hex hey)
#print axioms tile03
theorem tile04 : LeafStatement cap moments EX EY hull0 hull1 ⟨0,(1/8)⟩ ⟨(1/2),(5/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)

  exact (leaf1357 s t r ex ey hm hex hey)
#print axioms tile04
theorem tile05 : LeafStatement cap moments EX EY hull0 hull1 ⟨0,(1/8)⟩ ⟨(5/8),(3/4)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)

  exact (leaf1356 s t r ex ey hm hex hey)
#print axioms tile05
theorem tile06 : LeafStatement cap moments EX EY hull0 hull1 ⟨0,(1/8)⟩ ⟨(3/4),(7/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)

  exact (leaf1355 s t r ex ey hm hex hey)
#print axioms tile06
theorem tile07 : LeafStatement cap moments EX EY hull0 hull1 ⟨0,(1/8)⟩ ⟨(7/8),1⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)

  exact (leaf1354 s t r ex ey hm hex hey)
#print axioms tile07
end ShoulderRoot1Angular20261003
