import ParametricAngularLeaf
import Root1CertificateData
import Root1Leaves00
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace ShoulderRoot1Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
open Root0Angular20261003 (ArcCert TrigCert Holds turnPhase split_x split_y)
open ShoulderAngular20261003
open ShoulderRoot1Data20261003
theorem tile56 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/8),1⟩ ⟨0,(1/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → Root0Angular20261003.HullsMem hull0 hull1 (turnPhase a) (turnPhase b)

  exact (leaf0007 s t r ex ey hm hex hey)
#print axioms tile56
theorem tile57 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/8),1⟩ ⟨(1/8),(1/4)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → Root0Angular20261003.HullsMem hull0 hull1 (turnPhase a) (turnPhase b)

  exact (leaf0006 s t r ex ey hm hex hey)
#print axioms tile57
theorem tile58 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/8),1⟩ ⟨(1/4),(3/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → Root0Angular20261003.HullsMem hull0 hull1 (turnPhase a) (turnPhase b)

  exact (leaf0005 s t r ex ey hm hex hey)
#print axioms tile58
theorem tile59 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/8),1⟩ ⟨(3/8),(1/2)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → Root0Angular20261003.HullsMem hull0 hull1 (turnPhase a) (turnPhase b)

  exact (leaf0004 s t r ex ey hm hex hey)
#print axioms tile59
theorem tile60 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/8),1⟩ ⟨(1/2),(5/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → Root0Angular20261003.HullsMem hull0 hull1 (turnPhase a) (turnPhase b)

  exact (leaf0003 s t r ex ey hm hex hey)
#print axioms tile60
theorem tile61 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/8),1⟩ ⟨(5/8),(3/4)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → Root0Angular20261003.HullsMem hull0 hull1 (turnPhase a) (turnPhase b)

  exact (leaf0002 s t r ex ey hm hex hey)
#print axioms tile61
theorem tile62 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/8),1⟩ ⟨(3/4),(7/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → Root0Angular20261003.HullsMem hull0 hull1 (turnPhase a) (turnPhase b)

  exact (leaf0001 s t r ex ey hm hex hey)
#print axioms tile62
theorem tile63 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/8),1⟩ ⟨(7/8),1⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → Root0Angular20261003.HullsMem hull0 hull1 (turnPhase a) (turnPhase b)

  exact (leaf0000 s t r ex ey hm hex hey)
#print axioms tile63
end ShoulderRoot1Angular20261003
