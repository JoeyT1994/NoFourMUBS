import FourierPilotProofBatch0116

import FourierPilotProofBatch0119

import FourierPilotProofBatch0126

import FourierPilotProofBatch0130

import FourierPilotProofBatch0132

import FourierPilotProofBatch0135

import FourierPilotProofBatch0137

import FourierPilotProofBatch0147

import FourierPilotProofBatch0151

import FourierPilotProofBatch0157

import FourierPilotProofBatch0211

import FourierPilotProofBatch0256

import FourierPilotProofBatch0344

import FourierPilotProofBatch0345

/- Preserved declarations from candidate module FourierPilotCircleTree003472. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003472
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![3, 2, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003473.state FourierPilotCircleTree003522.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003473.covered FourierPilotCircleTree003522.covered
#print axioms covered
end FourierPilotCircleTree003472


/- Preserved declarations from candidate module FourierPilotCircleTree003528. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003528
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![3, 3, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003529.state FourierPilotCircleTree003580.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003529.covered FourierPilotCircleTree003580.covered
#print axioms covered
end FourierPilotCircleTree003528


/- Preserved declarations from candidate module FourierPilotCircleTree003604. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003604
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![5, 3, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003605.state FourierPilotCircleTree003654.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003605.covered FourierPilotCircleTree003654.covered
#print axioms covered
end FourierPilotCircleTree003604


/- Preserved declarations from candidate module FourierPilotCircleTree003662. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003662
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![6, 2, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003663.state FourierPilotCircleTree003664.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003663.covered FourierPilotCircleTree003664.covered
#print axioms covered
end FourierPilotCircleTree003662


/- Preserved declarations from candidate module FourierPilotCircleTree003813. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003813
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![5, 3, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003814.state FourierPilotCircleTree003863.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003814.covered FourierPilotCircleTree003863.covered
#print axioms covered
end FourierPilotCircleTree003813


/- Preserved declarations from candidate module FourierPilotCircleTree003871. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003871
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![6, 2, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003872.state FourierPilotCircleTree003873.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003872.covered FourierPilotCircleTree003873.covered
#print axioms covered
end FourierPilotCircleTree003871


/- Preserved declarations from candidate module FourierPilotCircleTree004004. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004004
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![2, 2, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004005.state FourierPilotCircleTree004006.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004005.covered FourierPilotCircleTree004006.covered
#print axioms covered
end FourierPilotCircleTree004004


/- Preserved declarations from candidate module FourierPilotCircleTree004059. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004059
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![2, 3, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004060.state FourierPilotCircleTree004061.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004060.covered FourierPilotCircleTree004061.covered
#print axioms covered
end FourierPilotCircleTree004059


/- Preserved declarations from candidate module FourierPilotCircleTree004114. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004114
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![3, 2, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004115.state FourierPilotCircleTree004166.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004115.covered FourierPilotCircleTree004166.covered
#print axioms covered
end FourierPilotCircleTree004114


/- Preserved declarations from candidate module FourierPilotCircleTree004169. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004169
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![3, 3, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004170.state FourierPilotCircleTree004221.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004170.covered FourierPilotCircleTree004221.covered
#print axioms covered
end FourierPilotCircleTree004169


/- Preserved declarations from candidate module FourierPilotCircleTree004268. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004268
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![2, 3, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004269.state FourierPilotCircleTree004284.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004269.covered FourierPilotCircleTree004284.covered
#print axioms covered
end FourierPilotCircleTree004268


/- Preserved declarations from candidate module FourierPilotCircleTree004341. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004341
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![3, 2, 2, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004342.state FourierPilotCircleTree004395.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004342.covered FourierPilotCircleTree004395.covered
#print axioms covered
end FourierPilotCircleTree004341


/- Preserved declarations from candidate module FourierPilotCircleTree004469. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004469
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![5, 3, 2, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004470.state FourierPilotCircleTree004519.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004470.covered FourierPilotCircleTree004519.covered
#print axioms covered
end FourierPilotCircleTree004469


/- Preserved declarations from candidate module FourierPilotCircleTree004529. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004529
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![6, 2, 3, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004530.state FourierPilotCircleTree004531.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004530.covered FourierPilotCircleTree004531.covered
#print axioms covered
end FourierPilotCircleTree004529


/- Preserved declarations from candidate module FourierPilotCircleTree004649. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004649
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![5, 2, 2, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004650.state FourierPilotCircleTree004651.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004650.covered FourierPilotCircleTree004651.covered
#print axioms covered
end FourierPilotCircleTree004649


/- Preserved declarations from candidate module FourierPilotCircleTree004775. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004775
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![6, 3, 3, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004776.state FourierPilotCircleTree004839.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004776.covered FourierPilotCircleTree004839.covered
#print axioms covered
end FourierPilotCircleTree004775
