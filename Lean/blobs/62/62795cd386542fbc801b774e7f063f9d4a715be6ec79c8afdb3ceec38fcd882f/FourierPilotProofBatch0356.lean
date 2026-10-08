import FourierPilotProofBatch0021

import FourierPilotProofBatch0027

import FourierPilotProofBatch0028

import FourierPilotProofBatch0034

import FourierPilotProofBatch0038

import FourierPilotProofBatch0054

import FourierPilotProofBatch0061

import FourierPilotProofBatch0062

import FourierPilotProofBatch0065

import FourierPilotProofBatch0078

import FourierPilotProofBatch0330

import FourierPilotProofBatch0331

import FourierPilotProofBatch0353

import FourierPilotProofBatch0354

/- Preserved declarations from candidate module FourierPilotCircleTree000591. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000591
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![2, 2, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000592.state FourierPilotCircleTree000593.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000592.covered FourierPilotCircleTree000593.covered
#print axioms covered
end FourierPilotCircleTree000591


/- Preserved declarations from candidate module FourierPilotCircleTree000720. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000720
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![3, 3, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000721.state FourierPilotCircleTree000790.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000721.covered FourierPilotCircleTree000790.covered
#print axioms covered
end FourierPilotCircleTree000720


/- Preserved declarations from candidate module FourierPilotCircleTree000794. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000794
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![2, 2, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000795.state FourierPilotCircleTree000796.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000795.covered FourierPilotCircleTree000796.covered
#print axioms covered
end FourierPilotCircleTree000794


/- Preserved declarations from candidate module FourierPilotCircleTree000923. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000923
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![3, 3, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000924.state FourierPilotCircleTree000993.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000924.covered FourierPilotCircleTree000993.covered
#print axioms covered
end FourierPilotCircleTree000923


/- Preserved declarations from candidate module FourierPilotCircleTree000998. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000998
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![2, 2, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000999.state FourierPilotCircleTree001000.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000999.covered FourierPilotCircleTree001000.covered
#print axioms covered
end FourierPilotCircleTree000998


/- Preserved declarations from candidate module FourierPilotCircleTree001061. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001061
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![3, 3, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001062.state FourierPilotCircleTree001119.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001062.covered FourierPilotCircleTree001119.covered
#print axioms covered
end FourierPilotCircleTree001061


/- Preserved declarations from candidate module FourierPilotCircleTree001136. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001136
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![2, 3, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001137.state FourierPilotCircleTree001180.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001137.covered FourierPilotCircleTree001180.covered
#print axioms covered
end FourierPilotCircleTree001136


/- Preserved declarations from candidate module FourierPilotCircleTree001259. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001259
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![3, 2, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001260.state FourierPilotCircleTree001337.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001260.covered FourierPilotCircleTree001337.covered
#print axioms covered
end FourierPilotCircleTree001259


/- Preserved declarations from candidate module FourierPilotCircleTree001392. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001392
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![1, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001393.state FourierPilotCircleTree001504.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001393.covered FourierPilotCircleTree001504.covered
theorem root_covered : CoveredState tab physicalCarrier T R targets signs rootState := by
  have h : state = rootState := by funext j; fin_cases j <;> rfl
  rw [← h]; exact covered
#print axioms covered
#print axioms root_covered
end FourierPilotCircleTree001392


/- Preserved declarations from candidate module FourierPilotCircleTree001624. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001624
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![2, 3, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001625.state FourierPilotCircleTree001626.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001625.covered FourierPilotCircleTree001626.covered
#print axioms covered
end FourierPilotCircleTree001624


/- Preserved declarations from candidate module FourierPilotCircleTree001730. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001730
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![3, 2, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001731.state FourierPilotCircleTree001834.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001731.covered FourierPilotCircleTree001834.covered
#print axioms covered
end FourierPilotCircleTree001730


/- Preserved declarations from candidate module FourierPilotCircleTree001856. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001856
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![2, 3, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001857.state FourierPilotCircleTree001858.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001857.covered FourierPilotCircleTree001858.covered
#print axioms covered
end FourierPilotCircleTree001856


/- Preserved declarations from candidate module FourierPilotCircleTree001917. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001917
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![3, 2, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001918.state FourierPilotCircleTree001973.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001918.covered FourierPilotCircleTree001973.covered
#print axioms covered
end FourierPilotCircleTree001917


/- Preserved declarations from candidate module FourierPilotCircleTree001997. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001997
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![2, 3, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001998.state FourierPilotCircleTree002043.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001998.covered FourierPilotCircleTree002043.covered
#print axioms covered
end FourierPilotCircleTree001997


/- Preserved declarations from candidate module FourierPilotCircleTree002128. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002128
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![3, 2, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002129.state FourierPilotCircleTree002206.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002129.covered FourierPilotCircleTree002206.covered
#print axioms covered
end FourierPilotCircleTree002128


/- Preserved declarations from candidate module FourierPilotCircleTree002269. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002269
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![2, 3, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002270.state FourierPilotCircleTree002371.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002270.covered FourierPilotCircleTree002371.covered
#print axioms covered
end FourierPilotCircleTree002269
