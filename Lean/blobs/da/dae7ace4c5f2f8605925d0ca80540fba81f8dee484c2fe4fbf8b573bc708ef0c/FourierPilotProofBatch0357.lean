import FourierPilotProofBatch0078

import FourierPilotProofBatch0089

import FourierPilotProofBatch0093

import FourierPilotProofBatch0106

import FourierPilotProofBatch0117

import FourierPilotProofBatch0121

import FourierPilotProofBatch0138

import FourierPilotProofBatch0144

import FourierPilotProofBatch0332

import FourierPilotProofBatch0333

import FourierPilotProofBatch0354

import FourierPilotProofBatch0355

/- Preserved declarations from candidate module FourierPilotCircleTree002373. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002373
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![3, 2, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002374.state FourierPilotCircleTree002375.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002374.covered FourierPilotCircleTree002375.covered
#print axioms covered
end FourierPilotCircleTree002373


/- Preserved declarations from candidate module FourierPilotCircleTree002483. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002483
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![1, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002484.state FourierPilotCircleTree002597.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002484.covered FourierPilotCircleTree002597.covered
theorem root_covered : CoveredState tab physicalCarrier T R targets signs rootState := by
  have h : state = rootState := by funext j; fin_cases j <;> rfl
  rw [← h]; exact covered
#print axioms covered
#print axioms root_covered
end FourierPilotCircleTree002483


/- Preserved declarations from candidate module FourierPilotCircleTree002727. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002727
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![2, 3, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002728.state FourierPilotCircleTree002729.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002728.covered FourierPilotCircleTree002729.covered
#print axioms covered
end FourierPilotCircleTree002727


/- Preserved declarations from candidate module FourierPilotCircleTree002786. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002786
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![3, 2, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002787.state FourierPilotCircleTree002842.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002787.covered FourierPilotCircleTree002842.covered
#print axioms covered
end FourierPilotCircleTree002786


/- Preserved declarations from candidate module FourierPilotCircleTree002869. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002869
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![2, 3, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002870.state FourierPilotCircleTree002915.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002870.covered FourierPilotCircleTree002915.covered
#print axioms covered
end FourierPilotCircleTree002869


/- Preserved declarations from candidate module FourierPilotCircleTree003000. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003000
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![3, 2, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003001.state FourierPilotCircleTree003078.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003001.covered FourierPilotCircleTree003078.covered
#print axioms covered
end FourierPilotCircleTree003000


/- Preserved declarations from candidate module FourierPilotCircleTree003141. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003141
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![2, 3, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003142.state FourierPilotCircleTree003243.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003142.covered FourierPilotCircleTree003243.covered
#print axioms covered
end FourierPilotCircleTree003141


/- Preserved declarations from candidate module FourierPilotCircleTree003245. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003245
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![3, 2, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003246.state FourierPilotCircleTree003247.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003246.covered FourierPilotCircleTree003247.covered
#print axioms covered
end FourierPilotCircleTree003245


/- Preserved declarations from candidate module FourierPilotCircleTree003355. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003355
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![1, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003356.state FourierPilotCircleTree003469.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003356.covered FourierPilotCircleTree003469.covered
theorem root_covered : CoveredState tab physicalCarrier T R targets signs rootState := by
  have h : state = rootState := by funext j; fin_cases j <;> rfl
  rw [← h]; exact covered
#print axioms covered
#print axioms root_covered
end FourierPilotCircleTree003355


/- Preserved declarations from candidate module FourierPilotCircleTree003599. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003599
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![2, 3, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003600.state FourierPilotCircleTree003601.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003600.covered FourierPilotCircleTree003601.covered
#print axioms covered
end FourierPilotCircleTree003599


/- Preserved declarations from candidate module FourierPilotCircleTree003658. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003658
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![3, 2, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003659.state FourierPilotCircleTree003714.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003659.covered FourierPilotCircleTree003714.covered
#print axioms covered
end FourierPilotCircleTree003658


/- Preserved declarations from candidate module FourierPilotCircleTree003744. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003744
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![2, 3, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003745.state FourierPilotCircleTree003788.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003745.covered FourierPilotCircleTree003788.covered
#print axioms covered
end FourierPilotCircleTree003744


/- Preserved declarations from candidate module FourierPilotCircleTree003867. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003867
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![3, 2, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003868.state FourierPilotCircleTree003945.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003868.covered FourierPilotCircleTree003945.covered
#print axioms covered
end FourierPilotCircleTree003867


/- Preserved declarations from candidate module FourierPilotCircleTree004000. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004000
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![1, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004001.state FourierPilotCircleTree004112.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004001.covered FourierPilotCircleTree004112.covered
theorem root_covered : CoveredState tab physicalCarrier T R targets signs rootState := by
  have h : state = rootState := by funext j; fin_cases j <;> rfl
  rw [← h]; exact covered
#print axioms covered
#print axioms root_covered
end FourierPilotCircleTree004000


/- Preserved declarations from candidate module FourierPilotCircleTree004232. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004232
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![2, 3, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004233.state FourierPilotCircleTree004234.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004233.covered FourierPilotCircleTree004234.covered
#print axioms covered
end FourierPilotCircleTree004232


/- Preserved declarations from candidate module FourierPilotCircleTree004338. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004338
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![3, 2, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004339.state FourierPilotCircleTree004442.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004339.covered FourierPilotCircleTree004442.covered
#print axioms covered
end FourierPilotCircleTree004338
