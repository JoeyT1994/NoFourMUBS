import FourierPilotProofBatch0003

import FourierPilotProofBatch0004

import FourierPilotProofBatch0006

import FourierPilotProofBatch0008

import FourierPilotProofBatch0010

import FourierPilotProofBatch0172

import FourierPilotProofBatch0175

import FourierPilotProofBatch0177

import FourierPilotProofBatch0179

import FourierPilotProofBatch0181

import FourierPilotProofBatch0186

import FourierPilotProofBatch0215

import FourierPilotProofBatch0315

/- Preserved declarations from candidate module FourierPilotCircleTree005193. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005193
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![2, 3, 2, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005194.state FourierPilotCircleTree005229.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005194.covered FourierPilotCircleTree005229.covered
#print axioms covered
end FourierPilotCircleTree005193


/- Preserved declarations from candidate module FourierPilotCircleTree005236. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005236
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![2, 3, 3, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005237.state FourierPilotCircleTree005274.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005237.covered FourierPilotCircleTree005274.covered
#print axioms covered
end FourierPilotCircleTree005236


/- Preserved declarations from candidate module FourierPilotCircleTree005280. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005280
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![3, 2, 2, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005281.state FourierPilotCircleTree005282.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005281.covered FourierPilotCircleTree005282.covered
#print axioms covered
end FourierPilotCircleTree005280


/- Preserved declarations from candidate module FourierPilotCircleTree005322. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005322
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![3, 2, 3, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005323.state FourierPilotCircleTree005328.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005323.covered FourierPilotCircleTree005328.covered
#print axioms covered
end FourierPilotCircleTree005322


/- Preserved declarations from candidate module FourierPilotCircleTree005383. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005383
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![2, 3, 2, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005384.state FourierPilotCircleTree005385.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005384.covered FourierPilotCircleTree005385.covered
#print axioms covered
end FourierPilotCircleTree005383


/- Preserved declarations from candidate module FourierPilotCircleTree005425. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005425
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![2, 3, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005426.state FourierPilotCircleTree005427.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005426.covered FourierPilotCircleTree005427.covered
#print axioms covered
end FourierPilotCircleTree005425


/- Preserved declarations from candidate module FourierPilotCircleTree005470. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005470
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![3, 2, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005471.state FourierPilotCircleTree005508.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005471.covered FourierPilotCircleTree005508.covered
#print axioms covered
end FourierPilotCircleTree005470


/- Preserved declarations from candidate module FourierPilotCircleTree005511. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005511
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![3, 2, 3, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005512.state FourierPilotCircleTree005549.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005512.covered FourierPilotCircleTree005549.covered
#print axioms covered
end FourierPilotCircleTree005511


/- Preserved declarations from candidate module FourierPilotCircleTree005576. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005576
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![9, 4, 4, 13, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005577.state FourierPilotCircleTree005578.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005577.covered FourierPilotCircleTree005578.covered
#print axioms covered
end FourierPilotCircleTree005576


/- Preserved declarations from candidate module FourierPilotCircleTree005671. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005671
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![14, 7, 7, 10, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005672.state FourierPilotCircleTree005707.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005672.covered FourierPilotCircleTree005707.covered
#print axioms covered
end FourierPilotCircleTree005671


/- Preserved declarations from candidate module FourierPilotCircleTree000020. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000020
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![2, 3, 2, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000021.state FourierPilotCircleTree000062.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000021.covered FourierPilotCircleTree000062.covered
#print axioms covered
end FourierPilotCircleTree000020


/- Preserved declarations from candidate module FourierPilotCircleTree000063. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000063
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![2, 3, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000064.state FourierPilotCircleTree000103.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000064.covered FourierPilotCircleTree000103.covered
#print axioms covered
end FourierPilotCircleTree000063


/- Preserved declarations from candidate module FourierPilotCircleTree000106. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000106
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![3, 2, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000107.state FourierPilotCircleTree000108.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000107.covered FourierPilotCircleTree000108.covered
#print axioms covered
end FourierPilotCircleTree000106


/- Preserved declarations from candidate module FourierPilotCircleTree000148. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000148
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![3, 2, 3, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000149.state FourierPilotCircleTree000150.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000149.covered FourierPilotCircleTree000150.covered
#print axioms covered
end FourierPilotCircleTree000148


/- Preserved declarations from candidate module FourierPilotCircleTree000209. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000209
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![2, 3, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000210.state FourierPilotCircleTree000211.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000210.covered FourierPilotCircleTree000211.covered
#print axioms covered
end FourierPilotCircleTree000209


/- Preserved declarations from candidate module FourierPilotCircleTree000252. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000252
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![2, 3, 3, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000253.state FourierPilotCircleTree000292.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000253.covered FourierPilotCircleTree000292.covered
#print axioms covered
end FourierPilotCircleTree000252

#print axioms FourierPilotCircleTree005193.covered
#print axioms FourierPilotCircleTree005236.covered
#print axioms FourierPilotCircleTree005280.covered
#print axioms FourierPilotCircleTree005322.covered
#print axioms FourierPilotCircleTree005383.covered
#print axioms FourierPilotCircleTree005425.covered
#print axioms FourierPilotCircleTree005470.covered
#print axioms FourierPilotCircleTree005511.covered
#print axioms FourierPilotCircleTree005576.covered
#print axioms FourierPilotCircleTree005671.covered
#print axioms FourierPilotCircleTree000020.covered
#print axioms FourierPilotCircleTree000063.covered
#print axioms FourierPilotCircleTree000106.covered
#print axioms FourierPilotCircleTree000148.covered
#print axioms FourierPilotCircleTree000209.covered
#print axioms FourierPilotCircleTree000252.covered
