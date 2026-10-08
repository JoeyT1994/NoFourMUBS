import FourierPilotProofBatch0034

import FourierPilotProofBatch0038

import FourierPilotProofBatch0064

import FourierPilotProofBatch0089

import FourierPilotProofBatch0093

import FourierPilotProofBatch0190

import FourierPilotProofBatch0191

import FourierPilotProofBatch0193

import FourierPilotProofBatch0195

import FourierPilotProofBatch0219

import FourierPilotProofBatch0220

import FourierPilotProofBatch0221

import FourierPilotProofBatch0356

import FourierPilotProofBatch0357

/- Preserved declarations from candidate module FourierPilotCircleTree000996. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000996
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![2, 2, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000997.state FourierPilotCircleTree000998.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000997.covered FourierPilotCircleTree000998.covered
#print axioms covered
end FourierPilotCircleTree000996


/- Preserved declarations from candidate module FourierPilotCircleTree001060. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001060
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![3, 3, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001061.state FourierPilotCircleTree001120.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001061.covered FourierPilotCircleTree001120.covered
#print axioms covered
end FourierPilotCircleTree001060


/- Preserved declarations from candidate module FourierPilotCircleTree001132. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001132
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![2, 3, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001133.state FourierPilotCircleTree001136.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001133.covered FourierPilotCircleTree001136.covered
#print axioms covered
end FourierPilotCircleTree001132


/- Preserved declarations from candidate module FourierPilotCircleTree001258. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001258
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![3, 2, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001259.state FourierPilotCircleTree001380.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001259.covered FourierPilotCircleTree001380.covered
#print axioms covered
end FourierPilotCircleTree001258


/- Preserved declarations from candidate module FourierPilotCircleTree001616. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001616
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![2, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001617.state FourierPilotCircleTree001624.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001617.covered FourierPilotCircleTree001624.covered
#print axioms covered
end FourierPilotCircleTree001616


/- Preserved declarations from candidate module FourierPilotCircleTree001729. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001729
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![3, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001730.state FourierPilotCircleTree001835.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001730.covered FourierPilotCircleTree001835.covered
#print axioms covered
end FourierPilotCircleTree001729


/- Preserved declarations from candidate module FourierPilotCircleTree001855. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001855
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![2, 3, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001856.state FourierPilotCircleTree001913.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001856.covered FourierPilotCircleTree001913.covered
#print axioms covered
end FourierPilotCircleTree001855


/- Preserved declarations from candidate module FourierPilotCircleTree001915. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001915
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![3, 2, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001916.state FourierPilotCircleTree001917.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001916.covered FourierPilotCircleTree001917.covered
#print axioms covered
end FourierPilotCircleTree001915


/- Preserved declarations from candidate module FourierPilotCircleTree001996. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001996
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![2, 3, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001997.state FourierPilotCircleTree002120.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001997.covered FourierPilotCircleTree002120.covered
#print axioms covered
end FourierPilotCircleTree001996


/- Preserved declarations from candidate module FourierPilotCircleTree002124. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002124
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![3, 2, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002125.state FourierPilotCircleTree002128.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002125.covered FourierPilotCircleTree002128.covered
#print axioms covered
end FourierPilotCircleTree002124


/- Preserved declarations from candidate module FourierPilotCircleTree002261. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002261
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![2, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002262.state FourierPilotCircleTree002269.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002262.covered FourierPilotCircleTree002269.covered
#print axioms covered
end FourierPilotCircleTree002261


/- Preserved declarations from candidate module FourierPilotCircleTree002372. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002372
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![3, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002373.state FourierPilotCircleTree002476.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002373.covered FourierPilotCircleTree002476.covered
#print axioms covered
end FourierPilotCircleTree002372


/- Preserved declarations from candidate module FourierPilotCircleTree002725. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002725
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![2, 3, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002726.state FourierPilotCircleTree002727.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002726.covered FourierPilotCircleTree002727.covered
#print axioms covered
end FourierPilotCircleTree002725


/- Preserved declarations from candidate module FourierPilotCircleTree002785. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002785
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![3, 2, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002786.state FourierPilotCircleTree002843.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002786.covered FourierPilotCircleTree002843.covered
#print axioms covered
end FourierPilotCircleTree002785


/- Preserved declarations from candidate module FourierPilotCircleTree002868. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002868
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![2, 3, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002869.state FourierPilotCircleTree002992.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002869.covered FourierPilotCircleTree002992.covered
#print axioms covered
end FourierPilotCircleTree002868


/- Preserved declarations from candidate module FourierPilotCircleTree002996. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002996
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![3, 2, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002997.state FourierPilotCircleTree003000.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002997.covered FourierPilotCircleTree003000.covered
#print axioms covered
end FourierPilotCircleTree002996

#print axioms FourierPilotCircleTree000996.covered
#print axioms FourierPilotCircleTree001060.covered
#print axioms FourierPilotCircleTree001132.covered
#print axioms FourierPilotCircleTree001258.covered
#print axioms FourierPilotCircleTree001616.covered
#print axioms FourierPilotCircleTree001729.covered
#print axioms FourierPilotCircleTree001855.covered
#print axioms FourierPilotCircleTree001915.covered
#print axioms FourierPilotCircleTree001996.covered
#print axioms FourierPilotCircleTree002124.covered
#print axioms FourierPilotCircleTree002261.covered
#print axioms FourierPilotCircleTree002372.covered
#print axioms FourierPilotCircleTree002725.covered
#print axioms FourierPilotCircleTree002785.covered
#print axioms FourierPilotCircleTree002868.covered
#print axioms FourierPilotCircleTree002996.covered
