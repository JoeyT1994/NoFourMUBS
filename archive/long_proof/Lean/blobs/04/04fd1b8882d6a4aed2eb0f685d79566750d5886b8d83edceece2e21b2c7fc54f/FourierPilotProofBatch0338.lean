import FourierPilotProofBatch0015

import FourierPilotProofBatch0017

import FourierPilotProofBatch0021

import FourierPilotProofBatch0027

import FourierPilotProofBatch0158

import FourierPilotProofBatch0164

import FourierPilotProofBatch0166

import FourierPilotProofBatch0167

import FourierPilotProofBatch0183

import FourierPilotProofBatch0185

import FourierPilotProofBatch0226

import FourierPilotProofBatch0227

import FourierPilotProofBatch0334

import FourierPilotProofBatch0335

/- Preserved declarations from candidate module FourierPilotCircleTree004857. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004857
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![5, 5, 5, 6, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004858.state FourierPilotCircleTree004859.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004858.covered FourierPilotCircleTree004859.covered
#print axioms covered
end FourierPilotCircleTree004857


/- Preserved declarations from candidate module FourierPilotCircleTree004982. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004982
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![6, 6, 6, 5, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004983.state FourierPilotCircleTree005040.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004983.covered FourierPilotCircleTree005040.covered
#print axioms covered
end FourierPilotCircleTree004982


/- Preserved declarations from candidate module FourierPilotCircleTree005059. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005059
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![4, 4, 7, 6, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005060.state FourierPilotCircleTree005105.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005060.covered FourierPilotCircleTree005105.covered
#print axioms covered
end FourierPilotCircleTree005059


/- Preserved declarations from candidate module FourierPilotCircleTree005122. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005122
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![7, 7, 4, 5, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005123.state FourierPilotCircleTree005124.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005123.covered FourierPilotCircleTree005124.covered
#print axioms covered
end FourierPilotCircleTree005122


/- Preserved declarations from candidate module FourierPilotCircleTree005181. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005181
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![2, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005182.state FourierPilotCircleTree005189.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005182.covered FourierPilotCircleTree005189.covered
#print axioms covered
end FourierPilotCircleTree005181


/- Preserved declarations from candidate module FourierPilotCircleTree005276. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005276
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![3, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005277.state FourierPilotCircleTree005364.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005277.covered FourierPilotCircleTree005364.covered
#print axioms covered
end FourierPilotCircleTree005276


/- Preserved declarations from candidate module FourierPilotCircleTree005372. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005372
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![2, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005373.state FourierPilotCircleTree005380.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005373.covered FourierPilotCircleTree005380.covered
#print axioms covered
end FourierPilotCircleTree005372


/- Preserved declarations from candidate module FourierPilotCircleTree005465. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005465
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![3, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005466.state FourierPilotCircleTree005551.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005466.covered FourierPilotCircleTree005551.covered
#print axioms covered
end FourierPilotCircleTree005465


/- Preserved declarations from candidate module FourierPilotCircleTree005569. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005569
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![4, 4, 4, 6, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005570.state FourierPilotCircleTree005613.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005570.covered FourierPilotCircleTree005613.covered
#print axioms covered
end FourierPilotCircleTree005569


/- Preserved declarations from candidate module FourierPilotCircleTree005666. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005666
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![7, 7, 7, 5, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005667.state FourierPilotCircleTree005668.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005667.covered FourierPilotCircleTree005668.covered
#print axioms covered
end FourierPilotCircleTree005666


/- Preserved declarations from candidate module FourierPilotCircleTree000008. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000008
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![1, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000009.state FourierPilotCircleTree000104.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000009.covered FourierPilotCircleTree000104.covered
theorem root_covered : CoveredState tab physicalCarrier T R targets signs rootState := by
  have h : state = rootState := by funext j; fin_cases j <;> rfl
  rw [← h]; exact covered
#print axioms covered
#print axioms root_covered
end FourierPilotCircleTree000008


/- Preserved declarations from candidate module FourierPilotCircleTree000199. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000199
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![1, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000200.state FourierPilotCircleTree000293.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000200.covered FourierPilotCircleTree000293.covered
theorem root_covered : CoveredState tab physicalCarrier T R targets signs rootState := by
  have h : state = rootState := by funext j; fin_cases j <;> rfl
  rw [← h]; exact covered
#print axioms covered
#print axioms root_covered
end FourierPilotCircleTree000199


/- Preserved declarations from candidate module FourierPilotCircleTree000396. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000396
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![4, 4, 4, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000397.state FourierPilotCircleTree000442.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000397.covered FourierPilotCircleTree000442.covered
#print axioms covered
end FourierPilotCircleTree000396


/- Preserved declarations from candidate module FourierPilotCircleTree000492. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000492
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![7, 7, 7, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000493.state FourierPilotCircleTree000494.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000493.covered FourierPilotCircleTree000494.covered
#print axioms covered
end FourierPilotCircleTree000492


/- Preserved declarations from candidate module FourierPilotCircleTree000601. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000601
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![5, 5, 5, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000602.state FourierPilotCircleTree000603.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000602.covered FourierPilotCircleTree000603.covered
#print axioms covered
end FourierPilotCircleTree000601


/- Preserved declarations from candidate module FourierPilotCircleTree000725. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000725
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![6, 6, 6, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000726.state FourierPilotCircleTree000785.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000726.covered FourierPilotCircleTree000785.covered
#print axioms covered
end FourierPilotCircleTree000725

#print axioms FourierPilotCircleTree004857.covered
#print axioms FourierPilotCircleTree004982.covered
#print axioms FourierPilotCircleTree005059.covered
#print axioms FourierPilotCircleTree005122.covered
#print axioms FourierPilotCircleTree005181.covered
#print axioms FourierPilotCircleTree005276.covered
#print axioms FourierPilotCircleTree005372.covered
#print axioms FourierPilotCircleTree005465.covered
#print axioms FourierPilotCircleTree005569.covered
#print axioms FourierPilotCircleTree005666.covered
#print axioms FourierPilotCircleTree000008.covered
#print axioms FourierPilotCircleTree000008.root_covered
#print axioms FourierPilotCircleTree000199.covered
#print axioms FourierPilotCircleTree000199.root_covered
#print axioms FourierPilotCircleTree000396.covered
#print axioms FourierPilotCircleTree000492.covered
#print axioms FourierPilotCircleTree000601.covered
#print axioms FourierPilotCircleTree000725.covered
