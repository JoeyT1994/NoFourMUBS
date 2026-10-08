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
theorem tile48 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/4),(7/8)⟩ ⟨0,(1/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → Root0Angular20261003.HullsMem hull0 hull1 (turnPhase a) (turnPhase b)

  exact (leaf0015 s t r ex ey hm hex hey)
#print axioms tile48
theorem tile49 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/4),(7/8)⟩ ⟨(1/8),(1/4)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → Root0Angular20261003.HullsMem hull0 hull1 (turnPhase a) (turnPhase b)

  exact (leaf0014 s t r ex ey hm hex hey)
#print axioms tile49
theorem tile50 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/4),(7/8)⟩ ⟨(1/4),(3/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → Root0Angular20261003.HullsMem hull0 hull1 (turnPhase a) (turnPhase b)

  exact (leaf0013 s t r ex ey hm hex hey)
#print axioms tile50
theorem tile51 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/4),(7/8)⟩ ⟨(3/8),(1/2)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → Root0Angular20261003.HullsMem hull0 hull1 (turnPhase a) (turnPhase b)

  exact (leaf0012 s t r ex ey hm hex hey)
#print axioms tile51
theorem tile52 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/4),(7/8)⟩ ⟨(1/2),(5/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → Root0Angular20261003.HullsMem hull0 hull1 (turnPhase a) (turnPhase b)

  exact (leaf0011 s t r ex ey hm hex hey)
#print axioms tile52
theorem tile53 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/4),(7/8)⟩ ⟨(5/8),(3/4)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → Root0Angular20261003.HullsMem hull0 hull1 (turnPhase a) (turnPhase b)

  exact (leaf0010 s t r ex ey hm hex hey)
#print axioms tile53
theorem tile54 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/4),(7/8)⟩ ⟨(3/4),(7/8)⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → Root0Angular20261003.HullsMem hull0 hull1 (turnPhase a) (turnPhase b)

  exact (leaf0009 s t r ex ey hm hex hey)
#print axioms tile54
theorem tile55 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/4),(7/8)⟩ ⟨(7/8),1⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps cap ex ey (turnPhase a) (turnPhase b) → Root0Angular20261003.HullsMem hull0 hull1 (turnPhase a) (turnPhase b)

  exact (leaf0008 s t r ex ey hm hex hey)
#print axioms tile55
end ShoulderRoot1Angular20261003
