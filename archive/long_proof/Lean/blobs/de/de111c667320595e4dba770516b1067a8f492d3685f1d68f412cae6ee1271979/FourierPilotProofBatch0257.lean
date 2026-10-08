import FourierPilotProofBatch0148

import FourierPilotProofBatch0152

import FourierPilotProofBatch0153

import FourierPilotProofBatch0155

import FourierPilotProofBatch0156

import FourierPilotProofBatch0159

import FourierPilotProofBatch0160

import FourierPilotProofBatch0162

import FourierPilotProofBatch0163

import FourierPilotProofBatch0165

import FourierPilotProofBatch0168

import FourierPilotProofBatch0170

import FourierPilotProofBatch0171

import FourierPilotProofBatch0172

import FourierPilotProofBatch0174

import FourierPilotProofBatch0250

import FourierPilotProofBatch0251

/- Preserved declarations from candidate module FourierPilotCircleTree004558. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004558
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![49, 46, 31, 42, 53]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004559.state FourierPilotCircleTree004560.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004559.covered FourierPilotCircleTree004560.covered
#print axioms covered
end FourierPilotCircleTree004558


/- Preserved declarations from candidate module FourierPilotCircleTree004593. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004593
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, true]
def state : State := ![1, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004594.state FourierPilotCircleTree004617.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004594.covered FourierPilotCircleTree004617.covered
theorem root_covered : CoveredState tab physicalCarrier T R targets signs rootState := by
  have h : state = rootState := by funext j; fin_cases j <;> rfl
  rw [← h]; exact covered
#print axioms covered
#print axioms root_covered
end FourierPilotCircleTree004593


/- Preserved declarations from candidate module FourierPilotCircleTree004689. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004689
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![46, 45, 41, 30, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004690.state FourierPilotCircleTree004691.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004690.covered FourierPilotCircleTree004691.covered
#print axioms covered
end FourierPilotCircleTree004689


/- Preserved declarations from candidate module FourierPilotCircleTree004718. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004718
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![4, 2, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004719.state FourierPilotCircleTree004720.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004719.covered FourierPilotCircleTree004720.covered
#print axioms covered
end FourierPilotCircleTree004718


/- Preserved declarations from candidate module FourierPilotCircleTree004756. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004756
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![7, 3, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004757.state FourierPilotCircleTree004770.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004757.covered FourierPilotCircleTree004770.covered
#print axioms covered
end FourierPilotCircleTree004756


/- Preserved declarations from candidate module FourierPilotCircleTree004803. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004803
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![49, 50, 54, 17, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004804.state FourierPilotCircleTree004817.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004804.covered FourierPilotCircleTree004817.covered
#print axioms covered
end FourierPilotCircleTree004803


/- Preserved declarations from candidate module FourierPilotCircleTree004892. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004892
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![45, 46, 41, 52, 30]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004893.state FourierPilotCircleTree004894.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004893.covered FourierPilotCircleTree004894.covered
#print axioms covered
end FourierPilotCircleTree004892


/- Preserved declarations from candidate module FourierPilotCircleTree004922. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004922
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![5, 2, 3, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004923.state FourierPilotCircleTree004936.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004923.covered FourierPilotCircleTree004936.covered
#print axioms covered
end FourierPilotCircleTree004922


/- Preserved declarations from candidate module FourierPilotCircleTree004958. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004958
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![6, 3, 2, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004959.state FourierPilotCircleTree004960.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004959.covered FourierPilotCircleTree004960.covered
#print axioms covered
end FourierPilotCircleTree004958


/- Preserved declarations from candidate module FourierPilotCircleTree005006. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005006
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![50, 49, 54, 43, 17]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005007.state FourierPilotCircleTree005020.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005007.covered FourierPilotCircleTree005020.covered
#print axioms covered
end FourierPilotCircleTree005006


/- Preserved declarations from candidate module FourierPilotCircleTree005084. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005084
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![38, 38, 31, 52, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005085.state FourierPilotCircleTree005086.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005085.covered FourierPilotCircleTree005086.covered
#print axioms covered
end FourierPilotCircleTree005084


/- Preserved declarations from candidate module FourierPilotCircleTree005144. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005144
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![57, 57, 16, 43, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005145.state FourierPilotCircleTree005158.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005145.covered FourierPilotCircleTree005158.covered
#print axioms covered
end FourierPilotCircleTree005144


/- Preserved declarations from candidate module FourierPilotCircleTree005206. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005206
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![9, 24, 8, 13, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005207.state FourierPilotCircleTree005220.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005207.covered FourierPilotCircleTree005220.covered
#print axioms covered
end FourierPilotCircleTree005206


/- Preserved declarations from candidate module FourierPilotCircleTree005252. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005252
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![10, 14, 13, 8, 11]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005253.state FourierPilotCircleTree005268.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005253.covered FourierPilotCircleTree005268.covered
#print axioms covered
end FourierPilotCircleTree005252


/- Preserved declarations from candidate module FourierPilotCircleTree005297. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005297
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![13, 9, 10, 15, 12]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005298.state FourierPilotCircleTree005299.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005298.covered FourierPilotCircleTree005299.covered
#print axioms covered
end FourierPilotCircleTree005297


/- Preserved declarations from candidate module FourierPilotCircleTree005346. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005346
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![14, 23, 15, 10, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005347.state FourierPilotCircleTree005348.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005347.covered FourierPilotCircleTree005348.covered
#print axioms covered
end FourierPilotCircleTree005346

#print axioms FourierPilotCircleTree004558.covered
#print axioms FourierPilotCircleTree004593.covered
#print axioms FourierPilotCircleTree004593.root_covered
#print axioms FourierPilotCircleTree004689.covered
#print axioms FourierPilotCircleTree004718.covered
#print axioms FourierPilotCircleTree004756.covered
#print axioms FourierPilotCircleTree004803.covered
#print axioms FourierPilotCircleTree004892.covered
#print axioms FourierPilotCircleTree004922.covered
#print axioms FourierPilotCircleTree004958.covered
#print axioms FourierPilotCircleTree005006.covered
#print axioms FourierPilotCircleTree005084.covered
#print axioms FourierPilotCircleTree005144.covered
#print axioms FourierPilotCircleTree005206.covered
#print axioms FourierPilotCircleTree005252.covered
#print axioms FourierPilotCircleTree005297.covered
#print axioms FourierPilotCircleTree005346.covered
