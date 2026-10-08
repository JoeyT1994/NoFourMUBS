import FourierPilotProofBatch0015

import FourierPilotProofBatch0017

import FourierPilotProofBatch0021

import FourierPilotProofBatch0027

import FourierPilotProofBatch0028

import FourierPilotProofBatch0034

import FourierPilotProofBatch0038

import FourierPilotProofBatch0041

import FourierPilotProofBatch0044

import FourierPilotProofBatch0166

import FourierPilotProofBatch0167

import FourierPilotProofBatch0183

import FourierPilotProofBatch0185

import FourierPilotProofBatch0338

import FourierPilotProofBatch0339

/- Preserved declarations from candidate module FourierPilotCircleTree005058. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005058
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![4, 4, 7, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005059.state FourierPilotCircleTree005106.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005059.covered FourierPilotCircleTree005106.covered
#print axioms covered
end FourierPilotCircleTree005058


/- Preserved declarations from candidate module FourierPilotCircleTree005120. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005120
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![7, 7, 4, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005121.state FourierPilotCircleTree005122.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005121.covered FourierPilotCircleTree005122.covered
#print axioms covered
end FourierPilotCircleTree005120


/- Preserved declarations from candidate module FourierPilotCircleTree005180. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005180
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![1, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005181.state FourierPilotCircleTree005276.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005181.covered FourierPilotCircleTree005276.covered
theorem root_covered : CoveredState tab physicalCarrier T R targets signs rootState := by
  have h : state = rootState := by funext j; fin_cases j <;> rfl
  rw [← h]; exact covered
#print axioms covered
#print axioms root_covered
end FourierPilotCircleTree005180


/- Preserved declarations from candidate module FourierPilotCircleTree005371. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005371
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![1, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005372.state FourierPilotCircleTree005465.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005372.covered FourierPilotCircleTree005465.covered
theorem root_covered : CoveredState tab physicalCarrier T R targets signs rootState := by
  have h : state = rootState := by funext j; fin_cases j <;> rfl
  rw [← h]; exact covered
#print axioms covered
#print axioms root_covered
end FourierPilotCircleTree005371


/- Preserved declarations from candidate module FourierPilotCircleTree005568. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005568
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![4, 4, 4, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005569.state FourierPilotCircleTree005614.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005569.covered FourierPilotCircleTree005614.covered
#print axioms covered
end FourierPilotCircleTree005568


/- Preserved declarations from candidate module FourierPilotCircleTree005664. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005664
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![7, 7, 7, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005665.state FourierPilotCircleTree005666.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005665.covered FourierPilotCircleTree005666.covered
#print axioms covered
end FourierPilotCircleTree005664


/- Preserved declarations from candidate module FourierPilotCircleTree000395. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000395
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![4, 4, 2, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000396.state FourierPilotCircleTree000443.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000396.covered FourierPilotCircleTree000443.covered
#print axioms covered
end FourierPilotCircleTree000395


/- Preserved declarations from candidate module FourierPilotCircleTree000490. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000490
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![7, 7, 3, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000491.state FourierPilotCircleTree000492.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000491.covered FourierPilotCircleTree000492.covered
#print axioms covered
end FourierPilotCircleTree000490


/- Preserved declarations from candidate module FourierPilotCircleTree000599. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000599
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![5, 5, 2, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000600.state FourierPilotCircleTree000601.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000600.covered FourierPilotCircleTree000601.covered
#print axioms covered
end FourierPilotCircleTree000599


/- Preserved declarations from candidate module FourierPilotCircleTree000724. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000724
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![6, 6, 3, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000725.state FourierPilotCircleTree000786.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000725.covered FourierPilotCircleTree000786.covered
#print axioms covered
end FourierPilotCircleTree000724


/- Preserved declarations from candidate module FourierPilotCircleTree000802. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000802
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![5, 5, 2, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000803.state FourierPilotCircleTree000804.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000803.covered FourierPilotCircleTree000804.covered
#print axioms covered
end FourierPilotCircleTree000802


/- Preserved declarations from candidate module FourierPilotCircleTree000927. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000927
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![6, 6, 3, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000928.state FourierPilotCircleTree000989.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000928.covered FourierPilotCircleTree000989.covered
#print axioms covered
end FourierPilotCircleTree000927


/- Preserved declarations from candidate module FourierPilotCircleTree001004. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001004
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![4, 4, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001005.state FourierPilotCircleTree001006.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001005.covered FourierPilotCircleTree001006.covered
#print axioms covered
end FourierPilotCircleTree001004


/- Preserved declarations from candidate module FourierPilotCircleTree001067. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001067
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![7, 7, 2, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001068.state FourierPilotCircleTree001117.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001068.covered FourierPilotCircleTree001117.covered
#print axioms covered
end FourierPilotCircleTree001067


/- Preserved declarations from candidate module FourierPilotCircleTree001206. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001206
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![5, 6, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001207.state FourierPilotCircleTree001208.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001207.covered FourierPilotCircleTree001208.covered
#print axioms covered
end FourierPilotCircleTree001206


/- Preserved declarations from candidate module FourierPilotCircleTree001265. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001265
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![6, 5, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001266.state FourierPilotCircleTree001313.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001266.covered FourierPilotCircleTree001313.covered
#print axioms covered
end FourierPilotCircleTree001265

#print axioms FourierPilotCircleTree005058.covered
#print axioms FourierPilotCircleTree005120.covered
#print axioms FourierPilotCircleTree005180.covered
#print axioms FourierPilotCircleTree005180.root_covered
#print axioms FourierPilotCircleTree005371.covered
#print axioms FourierPilotCircleTree005371.root_covered
#print axioms FourierPilotCircleTree005568.covered
#print axioms FourierPilotCircleTree005664.covered
#print axioms FourierPilotCircleTree000395.covered
#print axioms FourierPilotCircleTree000490.covered
#print axioms FourierPilotCircleTree000599.covered
#print axioms FourierPilotCircleTree000724.covered
#print axioms FourierPilotCircleTree000802.covered
#print axioms FourierPilotCircleTree000927.covered
#print axioms FourierPilotCircleTree001004.covered
#print axioms FourierPilotCircleTree001067.covered
#print axioms FourierPilotCircleTree001206.covered
#print axioms FourierPilotCircleTree001265.covered
