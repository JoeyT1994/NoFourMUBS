import FourierPilotProofBatch0003

import FourierPilotProofBatch0006

import FourierPilotProofBatch0009

import FourierPilotProofBatch0170

import FourierPilotProofBatch0172

import FourierPilotProofBatch0174

import FourierPilotProofBatch0176

import FourierPilotProofBatch0177

import FourierPilotProofBatch0179

import FourierPilotProofBatch0181

import FourierPilotProofBatch0182

import FourierPilotProofBatch0185

import FourierPilotProofBatch0299

import FourierPilotProofBatch0300

/- Preserved declarations from candidate module FourierPilotCircleTree005196. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005196
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![4, 6, 4, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005197.state FourierPilotCircleTree005226.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005197.covered FourierPilotCircleTree005226.covered
#print axioms covered
end FourierPilotCircleTree005196


/- Preserved declarations from candidate module FourierPilotCircleTree005241. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005241
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![5, 7, 3, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005242.state FourierPilotCircleTree005273.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005242.covered FourierPilotCircleTree005273.covered
#print axioms covered
end FourierPilotCircleTree005241


/- Preserved declarations from candidate module FourierPilotCircleTree005284. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005284
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![6, 4, 2, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005285.state FourierPilotCircleTree005286.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005285.covered FourierPilotCircleTree005286.covered
#print axioms covered
end FourierPilotCircleTree005284


/- Preserved declarations from candidate module FourierPilotCircleTree005332. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005332
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![7, 5, 7, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005333.state FourierPilotCircleTree005334.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005333.covered FourierPilotCircleTree005334.covered
#print axioms covered
end FourierPilotCircleTree005332


/- Preserved declarations from candidate module FourierPilotCircleTree005387. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005387
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![4, 6, 2, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005388.state FourierPilotCircleTree005389.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005388.covered FourierPilotCircleTree005389.covered
#print axioms covered
end FourierPilotCircleTree005387


/- Preserved declarations from candidate module FourierPilotCircleTree005433. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005433
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![5, 7, 7, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005434.state FourierPilotCircleTree005435.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005434.covered FourierPilotCircleTree005435.covered
#print axioms covered
end FourierPilotCircleTree005433


/- Preserved declarations from candidate module FourierPilotCircleTree005473. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005473
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![6, 4, 4, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005474.state FourierPilotCircleTree005503.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005474.covered FourierPilotCircleTree005503.covered
#print axioms covered
end FourierPilotCircleTree005473


/- Preserved declarations from candidate module FourierPilotCircleTree005516. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005516
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![7, 5, 3, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005517.state FourierPilotCircleTree005548.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005517.covered FourierPilotCircleTree005548.covered
#print axioms covered
end FourierPilotCircleTree005516


/- Preserved declarations from candidate module FourierPilotCircleTree005580. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005580
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![9, 9, 8, 26, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005581.state FourierPilotCircleTree005610.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005581.covered FourierPilotCircleTree005610.covered
#print axioms covered
end FourierPilotCircleTree005580


/- Preserved declarations from candidate module FourierPilotCircleTree005676. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005676
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![14, 14, 15, 21, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005677.state FourierPilotCircleTree005678.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005677.covered FourierPilotCircleTree005678.covered
#print axioms covered
end FourierPilotCircleTree005676


/- Preserved declarations from candidate module FourierPilotCircleTree000023. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000023
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![4, 6, 2, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000024.state FourierPilotCircleTree000055.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000024.covered FourierPilotCircleTree000055.covered
#print axioms covered
end FourierPilotCircleTree000023


/- Preserved declarations from candidate module FourierPilotCircleTree000067. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000067
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![5, 3, 3, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000068.state FourierPilotCircleTree000069.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000068.covered FourierPilotCircleTree000069.covered
#print axioms covered
end FourierPilotCircleTree000067


/- Preserved declarations from candidate module FourierPilotCircleTree000111. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000111
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![6, 2, 2, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000112.state FourierPilotCircleTree000145.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000112.covered FourierPilotCircleTree000145.covered
#print axioms covered
end FourierPilotCircleTree000111


/- Preserved declarations from candidate module FourierPilotCircleTree000158. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000158
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![7, 5, 3, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000159.state FourierPilotCircleTree000160.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000159.covered FourierPilotCircleTree000160.covered
#print axioms covered
end FourierPilotCircleTree000158


/- Preserved declarations from candidate module FourierPilotCircleTree000214. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000214
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![4, 3, 2, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000215.state FourierPilotCircleTree000248.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000215.covered FourierPilotCircleTree000248.covered
#print axioms covered
end FourierPilotCircleTree000214


/- Preserved declarations from candidate module FourierPilotCircleTree000259. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000259
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![5, 7, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000260.state FourierPilotCircleTree000261.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000260.covered FourierPilotCircleTree000261.covered
#print axioms covered
end FourierPilotCircleTree000259
