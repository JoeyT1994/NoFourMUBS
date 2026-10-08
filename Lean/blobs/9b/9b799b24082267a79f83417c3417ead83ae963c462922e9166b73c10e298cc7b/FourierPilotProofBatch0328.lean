import FourierPilotProofBatch0100

import FourierPilotProofBatch0103

import FourierPilotProofBatch0109

import FourierPilotProofBatch0110

import FourierPilotProofBatch0113

import FourierPilotProofBatch0116

import FourierPilotProofBatch0119

import FourierPilotProofBatch0123

import FourierPilotProofBatch0124

import FourierPilotProofBatch0127

import FourierPilotProofBatch0128

import FourierPilotProofBatch0132

import FourierPilotProofBatch0323

import FourierPilotProofBatch0324

/- Preserved declarations from candidate module FourierPilotCircleTree003033. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003033
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![13, 5, 7, 4, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003034.state FourierPilotCircleTree003075.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003034.covered FourierPilotCircleTree003075.covered
#print axioms covered
end FourierPilotCircleTree003033


/- Preserved declarations from candidate module FourierPilotCircleTree003079. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003079
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![3, 2, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003080.state FourierPilotCircleTree003081.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003080.covered FourierPilotCircleTree003081.covered
#print axioms covered
end FourierPilotCircleTree003079


/- Preserved declarations from candidate module FourierPilotCircleTree003152. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003152
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![4, 6, 5, 5, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003153.state FourierPilotCircleTree003154.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003153.covered FourierPilotCircleTree003154.covered
#print axioms covered
end FourierPilotCircleTree003152


/- Preserved declarations from candidate module FourierPilotCircleTree003300. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003300
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![7, 5, 6, 6, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003301.state FourierPilotCircleTree003344.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003301.covered FourierPilotCircleTree003344.covered
#print axioms covered
end FourierPilotCircleTree003300


/- Preserved declarations from candidate module FourierPilotCircleTree003368. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003368
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![5, 4, 7, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003369.state FourierPilotCircleTree003370.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003369.covered FourierPilotCircleTree003370.covered
#print axioms covered
end FourierPilotCircleTree003368


/- Preserved declarations from candidate module FourierPilotCircleTree003424. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003424
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![4, 6, 5, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003425.state FourierPilotCircleTree003464.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003425.covered FourierPilotCircleTree003464.covered
#print axioms covered
end FourierPilotCircleTree003424


/- Preserved declarations from candidate module FourierPilotCircleTree003480. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003480
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![7, 5, 6, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003481.state FourierPilotCircleTree003482.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003481.covered FourierPilotCircleTree003482.covered
#print axioms covered
end FourierPilotCircleTree003480


/- Preserved declarations from candidate module FourierPilotCircleTree003534. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003534
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![6, 7, 4, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003535.state FourierPilotCircleTree003576.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003535.covered FourierPilotCircleTree003576.covered
#print axioms covered
end FourierPilotCircleTree003534


/- Preserved declarations from candidate module FourierPilotCircleTree003612. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003612
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![11, 6, 7, 6, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003613.state FourierPilotCircleTree003652.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003613.covered FourierPilotCircleTree003652.covered
#print axioms covered
end FourierPilotCircleTree003612


/- Preserved declarations from candidate module FourierPilotCircleTree003669. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003669
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![12, 5, 4, 5, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003670.state FourierPilotCircleTree003671.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003670.covered FourierPilotCircleTree003671.covered
#print axioms covered
end FourierPilotCircleTree003669


/- Preserved declarations from candidate module FourierPilotCircleTree003747. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003747
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![2, 3, 3, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003748.state FourierPilotCircleTree003787.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003748.covered FourierPilotCircleTree003787.covered
#print axioms covered
end FourierPilotCircleTree003747


/- Preserved declarations from candidate module FourierPilotCircleTree003820. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003820
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![10, 6, 7, 7, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003821.state FourierPilotCircleTree003822.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003821.covered FourierPilotCircleTree003822.covered
#print axioms covered
end FourierPilotCircleTree003820


/- Preserved declarations from candidate module FourierPilotCircleTree003879. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003879
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![13, 5, 4, 4, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003880.state FourierPilotCircleTree003919.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003880.covered FourierPilotCircleTree003919.covered
#print axioms covered
end FourierPilotCircleTree003879


/- Preserved declarations from candidate module FourierPilotCircleTree003946. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003946
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![3, 2, 2, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003947.state FourierPilotCircleTree003948.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003947.covered FourierPilotCircleTree003948.covered
#print axioms covered
end FourierPilotCircleTree003946


/- Preserved declarations from candidate module FourierPilotCircleTree004013. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004013
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![4, 5, 7, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004014.state FourierPilotCircleTree004055.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004014.covered FourierPilotCircleTree004055.covered
#print axioms covered
end FourierPilotCircleTree004013


/- Preserved declarations from candidate module FourierPilotCircleTree004067. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004067
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![5, 7, 6, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004068.state FourierPilotCircleTree004069.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004068.covered FourierPilotCircleTree004069.covered
#print axioms covered
end FourierPilotCircleTree004067

#print axioms FourierPilotCircleTree003033.covered
#print axioms FourierPilotCircleTree003079.covered
#print axioms FourierPilotCircleTree003152.covered
#print axioms FourierPilotCircleTree003300.covered
#print axioms FourierPilotCircleTree003368.covered
#print axioms FourierPilotCircleTree003424.covered
#print axioms FourierPilotCircleTree003480.covered
#print axioms FourierPilotCircleTree003534.covered
#print axioms FourierPilotCircleTree003612.covered
#print axioms FourierPilotCircleTree003669.covered
#print axioms FourierPilotCircleTree003747.covered
#print axioms FourierPilotCircleTree003820.covered
#print axioms FourierPilotCircleTree003879.covered
#print axioms FourierPilotCircleTree003946.covered
#print axioms FourierPilotCircleTree004013.covered
#print axioms FourierPilotCircleTree004067.covered
