import FourierPilotProofBatch0011

import FourierPilotProofBatch0013

import FourierPilotProofBatch0014

import FourierPilotProofBatch0019

import FourierPilotProofBatch0023

import FourierPilotProofBatch0025

import FourierPilotProofBatch0030

import FourierPilotProofBatch0032

import FourierPilotProofBatch0035

import FourierPilotProofBatch0038

import FourierPilotProofBatch0039

import FourierPilotProofBatch0041

import FourierPilotProofBatch0044

import FourierPilotProofBatch0046

import FourierPilotProofBatch0047

import FourierPilotProofBatch0049

import FourierPilotProofBatch0316

/- Preserved declarations from candidate module FourierPilotCircleTree000296. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000296
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![3, 2, 2, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000297.state FourierPilotCircleTree000298.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000297.covered FourierPilotCircleTree000298.covered
#print axioms covered
end FourierPilotCircleTree000296


/- Preserved declarations from candidate module FourierPilotCircleTree000338. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000338
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![3, 2, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000339.state FourierPilotCircleTree000378.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000339.covered FourierPilotCircleTree000378.covered
#print axioms covered
end FourierPilotCircleTree000338


/- Preserved declarations from candidate module FourierPilotCircleTree000402. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000402
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![4, 4, 4, 13, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000403.state FourierPilotCircleTree000404.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000403.covered FourierPilotCircleTree000404.covered
#print axioms covered
end FourierPilotCircleTree000402


/- Preserved declarations from candidate module FourierPilotCircleTree000498. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000498
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![7, 7, 7, 10, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000499.state FourierPilotCircleTree000536.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000499.covered FourierPilotCircleTree000536.covered
#print axioms covered
end FourierPilotCircleTree000498


/- Preserved declarations from candidate module FourierPilotCircleTree000608. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000608
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![11, 11, 5, 7, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000609.state FourierPilotCircleTree000660.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000609.covered FourierPilotCircleTree000660.covered
#print axioms covered
end FourierPilotCircleTree000608


/- Preserved declarations from candidate module FourierPilotCircleTree000730. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000730
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![12, 12, 6, 4, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000731.state FourierPilotCircleTree000732.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000731.covered FourierPilotCircleTree000732.covered
#print axioms covered
end FourierPilotCircleTree000730


/- Preserved declarations from candidate module FourierPilotCircleTree000811. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000811
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![11, 11, 5, 6, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000812.state FourierPilotCircleTree000863.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000812.covered FourierPilotCircleTree000863.covered
#print axioms covered
end FourierPilotCircleTree000811


/- Preserved declarations from candidate module FourierPilotCircleTree000933. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000933
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![12, 12, 6, 5, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000934.state FourierPilotCircleTree000935.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000934.covered FourierPilotCircleTree000935.covered
#print axioms covered
end FourierPilotCircleTree000933


/- Preserved declarations from candidate module FourierPilotCircleTree001014. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001014
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![4, 4, 7, 13, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001015.state FourierPilotCircleTree001016.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001015.covered FourierPilotCircleTree001016.covered
#print axioms covered
end FourierPilotCircleTree001014


/- Preserved declarations from candidate module FourierPilotCircleTree001074. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001074
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![7, 7, 4, 10, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001075.state FourierPilotCircleTree001112.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001075.covered FourierPilotCircleTree001112.covered
#print axioms covered
end FourierPilotCircleTree001074


/- Preserved declarations from candidate module FourierPilotCircleTree001140. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001140
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![4, 3, 3, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001141.state FourierPilotCircleTree001142.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001141.covered FourierPilotCircleTree001142.covered
#print axioms covered
end FourierPilotCircleTree001140


/- Preserved declarations from candidate module FourierPilotCircleTree001214. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001214
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![10, 13, 7, 7, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001215.state FourierPilotCircleTree001216.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001215.covered FourierPilotCircleTree001216.covered
#print axioms covered
end FourierPilotCircleTree001214


/- Preserved declarations from candidate module FourierPilotCircleTree001272. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001272
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![13, 10, 4, 4, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001273.state FourierPilotCircleTree001310.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001273.covered FourierPilotCircleTree001310.covered
#print axioms covered
end FourierPilotCircleTree001272


/- Preserved declarations from candidate module FourierPilotCircleTree001340. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001340
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![7, 2, 2, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001341.state FourierPilotCircleTree001378.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001341.covered FourierPilotCircleTree001378.covered
#print axioms covered
end FourierPilotCircleTree001340


/- Preserved declarations from candidate module FourierPilotCircleTree001406. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001406
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![4, 5, 7, 6, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001407.state FourierPilotCircleTree001408.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001407.covered FourierPilotCircleTree001408.covered
#print axioms covered
end FourierPilotCircleTree001406


/- Preserved declarations from candidate module FourierPilotCircleTree001461. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001461
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![5, 7, 6, 7, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001462.state FourierPilotCircleTree001463.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001462.covered FourierPilotCircleTree001463.covered
#print axioms covered
end FourierPilotCircleTree001461
