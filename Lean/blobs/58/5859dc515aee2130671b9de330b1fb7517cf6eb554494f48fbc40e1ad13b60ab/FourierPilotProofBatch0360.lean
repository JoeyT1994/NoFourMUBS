import FourierPilotProofBatch0117

import FourierPilotProofBatch0121

import FourierPilotProofBatch0147

import FourierPilotProofBatch0164

import FourierPilotProofBatch0168

import FourierPilotProofBatch0197

import FourierPilotProofBatch0222

import FourierPilotProofBatch0224

import FourierPilotProofBatch0276

import FourierPilotProofBatch0277

import FourierPilotProofBatch0357

import FourierPilotProofBatch0358

/- Preserved declarations from candidate module FourierPilotCircleTree003133. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003133
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![2, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003134.state FourierPilotCircleTree003141.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003134.covered FourierPilotCircleTree003141.covered
#print axioms covered
end FourierPilotCircleTree003133


/- Preserved declarations from candidate module FourierPilotCircleTree003244. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003244
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![3, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003245.state FourierPilotCircleTree003348.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003245.covered FourierPilotCircleTree003348.covered
#print axioms covered
end FourierPilotCircleTree003244


/- Preserved declarations from candidate module FourierPilotCircleTree003597. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003597
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![2, 3, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003598.state FourierPilotCircleTree003599.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003598.covered FourierPilotCircleTree003599.covered
#print axioms covered
end FourierPilotCircleTree003597


/- Preserved declarations from candidate module FourierPilotCircleTree003657. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003657
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![3, 2, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003658.state FourierPilotCircleTree003715.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003658.covered FourierPilotCircleTree003715.covered
#print axioms covered
end FourierPilotCircleTree003657


/- Preserved declarations from candidate module FourierPilotCircleTree003740. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003740
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![2, 3, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003741.state FourierPilotCircleTree003744.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003741.covered FourierPilotCircleTree003744.covered
#print axioms covered
end FourierPilotCircleTree003740


/- Preserved declarations from candidate module FourierPilotCircleTree003866. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003866
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![3, 2, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003867.state FourierPilotCircleTree003988.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003867.covered FourierPilotCircleTree003988.covered
#print axioms covered
end FourierPilotCircleTree003866


/- Preserved declarations from candidate module FourierPilotCircleTree004224. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004224
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![2, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004225.state FourierPilotCircleTree004232.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004225.covered FourierPilotCircleTree004232.covered
#print axioms covered
end FourierPilotCircleTree004224


/- Preserved declarations from candidate module FourierPilotCircleTree004337. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004337
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![3, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004338.state FourierPilotCircleTree004443.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004338.covered FourierPilotCircleTree004443.covered
#print axioms covered
end FourierPilotCircleTree004337


/- Preserved declarations from candidate module FourierPilotCircleTree004463. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004463
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![2, 3, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004464.state FourierPilotCircleTree004521.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004464.covered FourierPilotCircleTree004521.covered
#print axioms covered
end FourierPilotCircleTree004463


/- Preserved declarations from candidate module FourierPilotCircleTree004523. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004523
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![3, 2, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004524.state FourierPilotCircleTree004525.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004524.covered FourierPilotCircleTree004525.covered
#print axioms covered
end FourierPilotCircleTree004523


/- Preserved declarations from candidate module FourierPilotCircleTree004642. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004642
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![2, 2, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004643.state FourierPilotCircleTree004714.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004643.covered FourierPilotCircleTree004714.covered
#print axioms covered
end FourierPilotCircleTree004642


/- Preserved declarations from candidate module FourierPilotCircleTree004750. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004750
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![3, 3, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004751.state FourierPilotCircleTree004772.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004751.covered FourierPilotCircleTree004772.covered
#print axioms covered
end FourierPilotCircleTree004750


/- Preserved declarations from candidate module FourierPilotCircleTree004845. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004845
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![2, 2, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004846.state FourierPilotCircleTree004917.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004846.covered FourierPilotCircleTree004917.covered
#print axioms covered
end FourierPilotCircleTree004845


/- Preserved declarations from candidate module FourierPilotCircleTree004953. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004953
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![3, 3, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004954.state FourierPilotCircleTree004975.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004954.covered FourierPilotCircleTree004975.covered
#print axioms covered
end FourierPilotCircleTree004953


/- Preserved declarations from candidate module FourierPilotCircleTree005048. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005048
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![2, 2, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005049.state FourierPilotCircleTree005050.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005049.covered FourierPilotCircleTree005050.covered
#print axioms covered
end FourierPilotCircleTree005048


/- Preserved declarations from candidate module FourierPilotCircleTree005112. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005112
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![3, 3, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005113.state FourierPilotCircleTree005172.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005113.covered FourierPilotCircleTree005172.covered
#print axioms covered
end FourierPilotCircleTree005112
