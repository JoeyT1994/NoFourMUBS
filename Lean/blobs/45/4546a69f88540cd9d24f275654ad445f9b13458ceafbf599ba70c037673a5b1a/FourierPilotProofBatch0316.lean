import FourierPilotProofBatch0012

import FourierPilotProofBatch0013

import FourierPilotProofBatch0014

import FourierPilotProofBatch0019

import FourierPilotProofBatch0035

import FourierPilotProofBatch0038

import FourierPilotProofBatch0039

import FourierPilotProofBatch0041

import FourierPilotProofBatch0044

import FourierPilotProofBatch0046

import FourierPilotProofBatch0047

import FourierPilotProofBatch0050

import FourierPilotProofBatch0217

import FourierPilotProofBatch0218

import FourierPilotProofBatch0311

/- Preserved declarations from candidate module FourierPilotCircleTree000298. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000298
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![3, 2, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000299.state FourierPilotCircleTree000336.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000299.covered FourierPilotCircleTree000336.covered
#print axioms covered
end FourierPilotCircleTree000298


/- Preserved declarations from candidate module FourierPilotCircleTree000339. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000339
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![3, 2, 3, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000340.state FourierPilotCircleTree000377.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000340.covered FourierPilotCircleTree000377.covered
#print axioms covered
end FourierPilotCircleTree000339


/- Preserved declarations from candidate module FourierPilotCircleTree000404. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000404
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![9, 4, 4, 13, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000405.state FourierPilotCircleTree000406.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000405.covered FourierPilotCircleTree000406.covered
#print axioms covered
end FourierPilotCircleTree000404


/- Preserved declarations from candidate module FourierPilotCircleTree000499. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000499
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![14, 7, 7, 10, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000500.state FourierPilotCircleTree000535.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000500.covered FourierPilotCircleTree000535.covered
#print axioms covered
end FourierPilotCircleTree000499


/- Preserved declarations from candidate module FourierPilotCircleTree000609. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000609
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![11, 11, 10, 7, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000610.state FourierPilotCircleTree000617.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000610.covered FourierPilotCircleTree000617.covered
#print axioms covered
end FourierPilotCircleTree000609


/- Preserved declarations from candidate module FourierPilotCircleTree000732. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000732
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![12, 12, 13, 4, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000733.state FourierPilotCircleTree000776.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000733.covered FourierPilotCircleTree000776.covered
#print axioms covered
end FourierPilotCircleTree000732


/- Preserved declarations from candidate module FourierPilotCircleTree000812. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000812
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![11, 11, 10, 6, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000813.state FourierPilotCircleTree000820.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000813.covered FourierPilotCircleTree000820.covered
#print axioms covered
end FourierPilotCircleTree000812


/- Preserved declarations from candidate module FourierPilotCircleTree000935. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000935
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![12, 12, 13, 5, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000936.state FourierPilotCircleTree000979.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000936.covered FourierPilotCircleTree000979.covered
#print axioms covered
end FourierPilotCircleTree000935


/- Preserved declarations from candidate module FourierPilotCircleTree001016. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001016
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![9, 4, 7, 13, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001017.state FourierPilotCircleTree001018.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001017.covered FourierPilotCircleTree001018.covered
#print axioms covered
end FourierPilotCircleTree001016


/- Preserved declarations from candidate module FourierPilotCircleTree001075. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001075
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![14, 7, 4, 10, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001076.state FourierPilotCircleTree001111.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001076.covered FourierPilotCircleTree001111.covered
#print axioms covered
end FourierPilotCircleTree001075


/- Preserved declarations from candidate module FourierPilotCircleTree001142. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001142
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![4, 7, 3, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001143.state FourierPilotCircleTree001144.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001143.covered FourierPilotCircleTree001144.covered
#print axioms covered
end FourierPilotCircleTree001142


/- Preserved declarations from candidate module FourierPilotCircleTree001216. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001216
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![10, 13, 15, 7, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001217.state FourierPilotCircleTree001218.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001217.covered FourierPilotCircleTree001218.covered
#print axioms covered
end FourierPilotCircleTree001216


/- Preserved declarations from candidate module FourierPilotCircleTree001273. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001273
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![13, 10, 8, 4, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001274.state FourierPilotCircleTree001309.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001274.covered FourierPilotCircleTree001309.covered
#print axioms covered
end FourierPilotCircleTree001273


/- Preserved declarations from candidate module FourierPilotCircleTree001341. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001341
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![7, 4, 2, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001342.state FourierPilotCircleTree001377.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001342.covered FourierPilotCircleTree001377.covered
#print axioms covered
end FourierPilotCircleTree001341


/- Preserved declarations from candidate module FourierPilotCircleTree001408. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001408
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![4, 5, 7, 6, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001409.state FourierPilotCircleTree001410.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001409.covered FourierPilotCircleTree001410.covered
#print axioms covered
end FourierPilotCircleTree001408


/- Preserved declarations from candidate module FourierPilotCircleTree001463. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001463
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![5, 7, 6, 7, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001464.state FourierPilotCircleTree001499.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001464.covered FourierPilotCircleTree001499.covered
#print axioms covered
end FourierPilotCircleTree001463
