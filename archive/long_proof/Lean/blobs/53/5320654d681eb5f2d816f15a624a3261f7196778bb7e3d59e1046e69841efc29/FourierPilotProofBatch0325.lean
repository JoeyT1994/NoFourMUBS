import FourierPilotProofBatch0002

import FourierPilotProofBatch0007

import FourierPilotProofBatch0009

import FourierPilotProofBatch0012

import FourierPilotProofBatch0014

import FourierPilotProofBatch0019

import FourierPilotProofBatch0170

import FourierPilotProofBatch0172

import FourierPilotProofBatch0173

import FourierPilotProofBatch0175

import FourierPilotProofBatch0178

import FourierPilotProofBatch0181

import FourierPilotProofBatch0186

import FourierPilotProofBatch0320

import FourierPilotProofBatch0321

/- Preserved declarations from candidate module FourierPilotCircleTree005192. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005192
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![2, 3, 2, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005193.state FourierPilotCircleTree005234.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005193.covered FourierPilotCircleTree005234.covered
#print axioms covered
end FourierPilotCircleTree005192


/- Preserved declarations from candidate module FourierPilotCircleTree005235. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005235
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![2, 3, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005236.state FourierPilotCircleTree005275.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005236.covered FourierPilotCircleTree005275.covered
#print axioms covered
end FourierPilotCircleTree005235


/- Preserved declarations from candidate module FourierPilotCircleTree005278. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005278
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![3, 2, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005279.state FourierPilotCircleTree005280.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005279.covered FourierPilotCircleTree005280.covered
#print axioms covered
end FourierPilotCircleTree005278


/- Preserved declarations from candidate module FourierPilotCircleTree005320. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005320
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![3, 2, 3, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005321.state FourierPilotCircleTree005322.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005321.covered FourierPilotCircleTree005322.covered
#print axioms covered
end FourierPilotCircleTree005320


/- Preserved declarations from candidate module FourierPilotCircleTree005381. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005381
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![2, 3, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005382.state FourierPilotCircleTree005383.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005382.covered FourierPilotCircleTree005383.covered
#print axioms covered
end FourierPilotCircleTree005381


/- Preserved declarations from candidate module FourierPilotCircleTree005424. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005424
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![2, 3, 3, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005425.state FourierPilotCircleTree005464.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005425.covered FourierPilotCircleTree005464.covered
#print axioms covered
end FourierPilotCircleTree005424


/- Preserved declarations from candidate module FourierPilotCircleTree005468. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005468
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![3, 2, 2, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005469.state FourierPilotCircleTree005470.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005469.covered FourierPilotCircleTree005470.covered
#print axioms covered
end FourierPilotCircleTree005468


/- Preserved declarations from candidate module FourierPilotCircleTree005510. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005510
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![3, 2, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005511.state FourierPilotCircleTree005550.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005511.covered FourierPilotCircleTree005550.covered
#print axioms covered
end FourierPilotCircleTree005510


/- Preserved declarations from candidate module FourierPilotCircleTree005574. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005574
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![4, 4, 4, 13, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005575.state FourierPilotCircleTree005576.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005575.covered FourierPilotCircleTree005576.covered
#print axioms covered
end FourierPilotCircleTree005574


/- Preserved declarations from candidate module FourierPilotCircleTree005670. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005670
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![7, 7, 7, 10, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005671.state FourierPilotCircleTree005708.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005671.covered FourierPilotCircleTree005708.covered
#print axioms covered
end FourierPilotCircleTree005670


/- Preserved declarations from candidate module FourierPilotCircleTree000018. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000018
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![2, 3, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000019.state FourierPilotCircleTree000020.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000019.covered FourierPilotCircleTree000020.covered
#print axioms covered
end FourierPilotCircleTree000018


/- Preserved declarations from candidate module FourierPilotCircleTree000147. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000147
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![3, 2, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000148.state FourierPilotCircleTree000191.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000148.covered FourierPilotCircleTree000191.covered
#print axioms covered
end FourierPilotCircleTree000147


/- Preserved declarations from candidate module FourierPilotCircleTree000250. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000250
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![2, 3, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000251.state FourierPilotCircleTree000252.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000251.covered FourierPilotCircleTree000252.covered
#print axioms covered
end FourierPilotCircleTree000250


/- Preserved declarations from candidate module FourierPilotCircleTree000295. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000295
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![3, 2, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000296.state FourierPilotCircleTree000337.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000296.covered FourierPilotCircleTree000337.covered
#print axioms covered
end FourierPilotCircleTree000295


/- Preserved declarations from candidate module FourierPilotCircleTree000400. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000400
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![4, 4, 4, 13, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000401.state FourierPilotCircleTree000402.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000401.covered FourierPilotCircleTree000402.covered
#print axioms covered
end FourierPilotCircleTree000400


/- Preserved declarations from candidate module FourierPilotCircleTree000497. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000497
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![7, 7, 7, 10, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000498.state FourierPilotCircleTree000537.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000498.covered FourierPilotCircleTree000537.covered
#print axioms covered
end FourierPilotCircleTree000497
