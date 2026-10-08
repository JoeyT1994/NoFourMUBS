import FourierPilotProofBatch0077

import FourierPilotProofBatch0079

import FourierPilotProofBatch0082

import FourierPilotProofBatch0089

import FourierPilotProofBatch0091

import FourierPilotProofBatch0105

import FourierPilotProofBatch0107

import FourierPilotProofBatch0110

import FourierPilotProofBatch0209

import FourierPilotProofBatch0211

import FourierPilotProofBatch0273

import FourierPilotProofBatch0274

import FourierPilotProofBatch0343

import FourierPilotProofBatch0344

/- Preserved declarations from candidate module FourierPilotCircleTree002046. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002046
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![5, 3, 2, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002047.state FourierPilotCircleTree002098.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002047.covered FourierPilotCircleTree002098.covered
#print axioms covered
end FourierPilotCircleTree002046


/- Preserved declarations from candidate module FourierPilotCircleTree002132. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002132
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![6, 2, 3, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002133.state FourierPilotCircleTree002154.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002133.covered FourierPilotCircleTree002154.covered
#print axioms covered
end FourierPilotCircleTree002132


/- Preserved declarations from candidate module FourierPilotCircleTree002272. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002272
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![2, 3, 2, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002273.state FourierPilotCircleTree002338.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002273.covered FourierPilotCircleTree002338.covered
#print axioms covered
end FourierPilotCircleTree002272


/- Preserved declarations from candidate module FourierPilotCircleTree002409. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002409
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![3, 2, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002410.state FourierPilotCircleTree002411.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002410.covered FourierPilotCircleTree002411.covered
#print axioms covered
end FourierPilotCircleTree002409


/- Preserved declarations from candidate module FourierPilotCircleTree002487. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002487
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![2, 2, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002488.state FourierPilotCircleTree002489.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002488.covered FourierPilotCircleTree002489.covered
#print axioms covered
end FourierPilotCircleTree002487


/- Preserved declarations from candidate module FourierPilotCircleTree002541. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002541
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![2, 3, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002542.state FourierPilotCircleTree002547.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002542.covered FourierPilotCircleTree002547.covered
#print axioms covered
end FourierPilotCircleTree002541


/- Preserved declarations from candidate module FourierPilotCircleTree002600. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002600
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![3, 2, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002601.state FourierPilotCircleTree002650.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002601.covered FourierPilotCircleTree002650.covered
#print axioms covered
end FourierPilotCircleTree002600


/- Preserved declarations from candidate module FourierPilotCircleTree002656. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002656
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![3, 3, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002657.state FourierPilotCircleTree002708.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002657.covered FourierPilotCircleTree002708.covered
#print axioms covered
end FourierPilotCircleTree002656


/- Preserved declarations from candidate module FourierPilotCircleTree002732. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002732
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![5, 3, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002733.state FourierPilotCircleTree002782.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002733.covered FourierPilotCircleTree002782.covered
#print axioms covered
end FourierPilotCircleTree002732


/- Preserved declarations from candidate module FourierPilotCircleTree002790. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002790
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![6, 2, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002791.state FourierPilotCircleTree002792.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002791.covered FourierPilotCircleTree002792.covered
#print axioms covered
end FourierPilotCircleTree002790


/- Preserved declarations from candidate module FourierPilotCircleTree002918. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002918
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![5, 3, 2, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002919.state FourierPilotCircleTree002970.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002919.covered FourierPilotCircleTree002970.covered
#print axioms covered
end FourierPilotCircleTree002918


/- Preserved declarations from candidate module FourierPilotCircleTree003004. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003004
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![6, 2, 3, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003005.state FourierPilotCircleTree003026.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003005.covered FourierPilotCircleTree003026.covered
#print axioms covered
end FourierPilotCircleTree003004


/- Preserved declarations from candidate module FourierPilotCircleTree003144. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003144
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![2, 3, 2, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003145.state FourierPilotCircleTree003210.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003145.covered FourierPilotCircleTree003210.covered
#print axioms covered
end FourierPilotCircleTree003144


/- Preserved declarations from candidate module FourierPilotCircleTree003281. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003281
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![3, 2, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003282.state FourierPilotCircleTree003283.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003282.covered FourierPilotCircleTree003283.covered
#print axioms covered
end FourierPilotCircleTree003281


/- Preserved declarations from candidate module FourierPilotCircleTree003359. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003359
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![2, 2, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003360.state FourierPilotCircleTree003361.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003360.covered FourierPilotCircleTree003361.covered
#print axioms covered
end FourierPilotCircleTree003359


/- Preserved declarations from candidate module FourierPilotCircleTree003413. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003413
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![2, 3, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003414.state FourierPilotCircleTree003419.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003414.covered FourierPilotCircleTree003419.covered
#print axioms covered
end FourierPilotCircleTree003413
