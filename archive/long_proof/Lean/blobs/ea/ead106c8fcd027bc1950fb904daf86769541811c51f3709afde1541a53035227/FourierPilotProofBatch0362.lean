import FourierPilotProofBatch0225

import FourierPilotProofBatch0230

import FourierPilotProofBatch0231

import FourierPilotProofBatch0232

import FourierPilotProofBatch0233

import FourierPilotProofBatch0242

import FourierPilotProofBatch0247

import FourierPilotProofBatch0248

import FourierPilotProofBatch0359

import FourierPilotProofBatch0360

/- Preserved declarations from candidate module FourierPilotCircleTree002123. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002123
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![3, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002124.state FourierPilotCircleTree002251.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002124.covered FourierPilotCircleTree002251.covered
#print axioms covered
end FourierPilotCircleTree002123


/- Preserved declarations from candidate module FourierPilotCircleTree002260. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002260
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![1, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002261.state FourierPilotCircleTree002372.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002261.covered FourierPilotCircleTree002372.covered
theorem root_covered : CoveredState tab physicalCarrier T R targets signs rootState := by
  have h : state = rootState := by funext j; fin_cases j <;> rfl
  rw [← h]; exact covered
#print axioms covered
#print axioms root_covered
end FourierPilotCircleTree002260


/- Preserved declarations from candidate module FourierPilotCircleTree002711. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002711
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![2, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002712.state FourierPilotCircleTree002725.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002712.covered FourierPilotCircleTree002725.covered
#print axioms covered
end FourierPilotCircleTree002711


/- Preserved declarations from candidate module FourierPilotCircleTree002784. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002784
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![3, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002785.state FourierPilotCircleTree002844.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002785.covered FourierPilotCircleTree002844.covered
#print axioms covered
end FourierPilotCircleTree002784


/- Preserved declarations from candidate module FourierPilotCircleTree002858. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002858
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![2, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002859.state FourierPilotCircleTree002868.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002859.covered FourierPilotCircleTree002868.covered
#print axioms covered
end FourierPilotCircleTree002858


/- Preserved declarations from candidate module FourierPilotCircleTree002995. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002995
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![3, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002996.state FourierPilotCircleTree003123.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002996.covered FourierPilotCircleTree003123.covered
#print axioms covered
end FourierPilotCircleTree002995


/- Preserved declarations from candidate module FourierPilotCircleTree003132. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003132
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![1, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003133.state FourierPilotCircleTree003244.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003133.covered FourierPilotCircleTree003244.covered
theorem root_covered : CoveredState tab physicalCarrier T R targets signs rootState := by
  have h : state = rootState := by funext j; fin_cases j <;> rfl
  rw [← h]; exact covered
#print axioms covered
#print axioms root_covered
end FourierPilotCircleTree003132


/- Preserved declarations from candidate module FourierPilotCircleTree003583. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003583
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![2, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003584.state FourierPilotCircleTree003597.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003584.covered FourierPilotCircleTree003597.covered
#print axioms covered
end FourierPilotCircleTree003583


/- Preserved declarations from candidate module FourierPilotCircleTree003656. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003656
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![3, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003657.state FourierPilotCircleTree003716.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003657.covered FourierPilotCircleTree003716.covered
#print axioms covered
end FourierPilotCircleTree003656


/- Preserved declarations from candidate module FourierPilotCircleTree003730. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003730
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![2, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003731.state FourierPilotCircleTree003740.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003731.covered FourierPilotCircleTree003740.covered
#print axioms covered
end FourierPilotCircleTree003730


/- Preserved declarations from candidate module FourierPilotCircleTree003865. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003865
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![3, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003866.state FourierPilotCircleTree003991.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003866.covered FourierPilotCircleTree003991.covered
#print axioms covered
end FourierPilotCircleTree003865


/- Preserved declarations from candidate module FourierPilotCircleTree004223. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004223
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![1, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004224.state FourierPilotCircleTree004337.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004224.covered FourierPilotCircleTree004337.covered
theorem root_covered : CoveredState tab physicalCarrier T R targets signs rootState := by
  have h : state = rootState := by funext j; fin_cases j <;> rfl
  rw [← h]; exact covered
#print axioms covered
#print axioms root_covered
end FourierPilotCircleTree004223


/- Preserved declarations from candidate module FourierPilotCircleTree004451. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004451
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![2, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004452.state FourierPilotCircleTree004463.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004452.covered FourierPilotCircleTree004463.covered
#print axioms covered
end FourierPilotCircleTree004451


/- Preserved declarations from candidate module FourierPilotCircleTree004522. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004522
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![3, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004523.state FourierPilotCircleTree004582.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004523.covered FourierPilotCircleTree004582.covered
#print axioms covered
end FourierPilotCircleTree004522


/- Preserved declarations from candidate module FourierPilotCircleTree004641. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004641
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![2, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004642.state FourierPilotCircleTree004735.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004642.covered FourierPilotCircleTree004735.covered
#print axioms covered
end FourierPilotCircleTree004641


/- Preserved declarations from candidate module FourierPilotCircleTree004742. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004742
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![3, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004743.state FourierPilotCircleTree004750.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004743.covered FourierPilotCircleTree004750.covered
#print axioms covered
end FourierPilotCircleTree004742
