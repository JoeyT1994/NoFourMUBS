import FourierPilotProofBatch0117

import FourierPilotProofBatch0120

import FourierPilotProofBatch0122

import FourierPilotProofBatch0125

import FourierPilotProofBatch0126

import FourierPilotProofBatch0130

import FourierPilotProofBatch0133

import FourierPilotProofBatch0134

import FourierPilotProofBatch0137

import FourierPilotProofBatch0141

import FourierPilotProofBatch0145

import FourierPilotProofBatch0148

import FourierPilotProofBatch0151

import FourierPilotProofBatch0157

import FourierPilotProofBatch0328

import FourierPilotProofBatch0329

/- Preserved declarations from candidate module FourierPilotCircleTree003610. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003610
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![5, 6, 7, 6, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003611.state FourierPilotCircleTree003612.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003611.covered FourierPilotCircleTree003612.covered
#print axioms covered
end FourierPilotCircleTree003610


/- Preserved declarations from candidate module FourierPilotCircleTree003668. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003668
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![6, 5, 4, 5, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003669.state FourierPilotCircleTree003710.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003669.covered FourierPilotCircleTree003710.covered
#print axioms covered
end FourierPilotCircleTree003668


/- Preserved declarations from candidate module FourierPilotCircleTree003745. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003745
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![2, 3, 3, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003746.state FourierPilotCircleTree003747.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003746.covered FourierPilotCircleTree003747.covered
#print axioms covered
end FourierPilotCircleTree003745


/- Preserved declarations from candidate module FourierPilotCircleTree003819. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003819
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![5, 6, 7, 7, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003820.state FourierPilotCircleTree003861.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003820.covered FourierPilotCircleTree003861.covered
#print axioms covered
end FourierPilotCircleTree003819


/- Preserved declarations from candidate module FourierPilotCircleTree003877. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003877
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![6, 5, 4, 4, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003878.state FourierPilotCircleTree003879.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003878.covered FourierPilotCircleTree003879.covered
#print axioms covered
end FourierPilotCircleTree003877


/- Preserved declarations from candidate module FourierPilotCircleTree003945. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003945
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![3, 2, 2, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003946.state FourierPilotCircleTree003987.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003946.covered FourierPilotCircleTree003987.covered
#print axioms covered
end FourierPilotCircleTree003945


/- Preserved declarations from candidate module FourierPilotCircleTree004011. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004011
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![4, 5, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004012.state FourierPilotCircleTree004013.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004012.covered FourierPilotCircleTree004013.covered
#print axioms covered
end FourierPilotCircleTree004011


/- Preserved declarations from candidate module FourierPilotCircleTree004066. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004066
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![5, 7, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004067.state FourierPilotCircleTree004108.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004067.covered FourierPilotCircleTree004108.covered
#print axioms covered
end FourierPilotCircleTree004066


/- Preserved declarations from candidate module FourierPilotCircleTree004121. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004121
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![6, 4, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004122.state FourierPilotCircleTree004123.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004122.covered FourierPilotCircleTree004123.covered
#print axioms covered
end FourierPilotCircleTree004121


/- Preserved declarations from candidate module FourierPilotCircleTree004174. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004174
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![7, 6, 2, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004175.state FourierPilotCircleTree004218.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004175.covered FourierPilotCircleTree004218.covered
#print axioms covered
end FourierPilotCircleTree004174


/- Preserved declarations from candidate module FourierPilotCircleTree004288. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004288
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![5, 7, 6, 6, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004289.state FourierPilotCircleTree004334.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004289.covered FourierPilotCircleTree004334.covered
#print axioms covered
end FourierPilotCircleTree004288


/- Preserved declarations from candidate module FourierPilotCircleTree004347. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004347
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![6, 4, 5, 5, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004348.state FourierPilotCircleTree004349.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004348.covered FourierPilotCircleTree004349.covered
#print axioms covered
end FourierPilotCircleTree004347


/- Preserved declarations from candidate module FourierPilotCircleTree004474. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004474
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![5, 6, 4, 6, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004475.state FourierPilotCircleTree004476.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004475.covered FourierPilotCircleTree004476.covered
#print axioms covered
end FourierPilotCircleTree004474


/- Preserved declarations from candidate module FourierPilotCircleTree004536. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004536
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![6, 5, 7, 5, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004537.state FourierPilotCircleTree004578.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004537.covered FourierPilotCircleTree004578.covered
#print axioms covered
end FourierPilotCircleTree004536


/- Preserved declarations from candidate module FourierPilotCircleTree004656. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004656
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![5, 5, 5, 7, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004657.state FourierPilotCircleTree004658.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004657.covered FourierPilotCircleTree004658.covered
#print axioms covered
end FourierPilotCircleTree004656


/- Preserved declarations from candidate module FourierPilotCircleTree004780. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004780
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![6, 6, 6, 4, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004781.state FourierPilotCircleTree004836.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004781.covered FourierPilotCircleTree004836.covered
#print axioms covered
end FourierPilotCircleTree004780
