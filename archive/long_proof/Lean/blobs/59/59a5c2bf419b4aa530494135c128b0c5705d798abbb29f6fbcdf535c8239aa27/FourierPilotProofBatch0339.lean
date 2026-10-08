import FourierPilotProofBatch0030

import FourierPilotProofBatch0032

import FourierPilotProofBatch0036

import FourierPilotProofBatch0041

import FourierPilotProofBatch0044

import FourierPilotProofBatch0049

import FourierPilotProofBatch0052

import FourierPilotProofBatch0058

import FourierPilotProofBatch0063

import FourierPilotProofBatch0064

import FourierPilotProofBatch0068

import FourierPilotProofBatch0073

import FourierPilotProofBatch0335

import FourierPilotProofBatch0336

/- Preserved declarations from candidate module FourierPilotCircleTree000804. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000804
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![5, 5, 5, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000805.state FourierPilotCircleTree000864.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000805.covered FourierPilotCircleTree000864.covered
#print axioms covered
end FourierPilotCircleTree000804


/- Preserved declarations from candidate module FourierPilotCircleTree000928. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000928
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![6, 6, 6, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000929.state FourierPilotCircleTree000930.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000929.covered FourierPilotCircleTree000930.covered
#print axioms covered
end FourierPilotCircleTree000928


/- Preserved declarations from candidate module FourierPilotCircleTree001006. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001006
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![4, 4, 7, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001007.state FourierPilotCircleTree001054.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001007.covered FourierPilotCircleTree001054.covered
#print axioms covered
end FourierPilotCircleTree001006


/- Preserved declarations from candidate module FourierPilotCircleTree001068. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001068
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![7, 7, 4, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001069.state FourierPilotCircleTree001070.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001069.covered FourierPilotCircleTree001070.covered
#print axioms covered
end FourierPilotCircleTree001068


/- Preserved declarations from candidate module FourierPilotCircleTree001208. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001208
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![5, 6, 7, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001209.state FourierPilotCircleTree001210.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001209.covered FourierPilotCircleTree001210.covered
#print axioms covered
end FourierPilotCircleTree001208


/- Preserved declarations from candidate module FourierPilotCircleTree001266. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001266
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![6, 5, 4, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001267.state FourierPilotCircleTree001312.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001267.covered FourierPilotCircleTree001312.covered
#print axioms covered
end FourierPilotCircleTree001266


/- Preserved declarations from candidate module FourierPilotCircleTree001400. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001400
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![2, 2, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001401.state FourierPilotCircleTree001448.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001401.covered FourierPilotCircleTree001448.covered
#print axioms covered
end FourierPilotCircleTree001400


/- Preserved declarations from candidate module FourierPilotCircleTree001454. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001454
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![2, 3, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001455.state FourierPilotCircleTree001456.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001455.covered FourierPilotCircleTree001456.covered
#print axioms covered
end FourierPilotCircleTree001454


/- Preserved declarations from candidate module FourierPilotCircleTree001511. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001511
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![3, 2, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001512.state FourierPilotCircleTree001557.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001512.covered FourierPilotCircleTree001557.covered
#print axioms covered
end FourierPilotCircleTree001511


/- Preserved declarations from candidate module FourierPilotCircleTree001563. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001563
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![3, 3, 2, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001564.state FourierPilotCircleTree001565.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001564.covered FourierPilotCircleTree001565.covered
#print axioms covered
end FourierPilotCircleTree001563


/- Preserved declarations from candidate module FourierPilotCircleTree001678. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001678
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![5, 7, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001679.state FourierPilotCircleTree001728.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001679.covered FourierPilotCircleTree001728.covered
#print axioms covered
end FourierPilotCircleTree001678


/- Preserved declarations from candidate module FourierPilotCircleTree001735. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001735
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![6, 4, 2, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001736.state FourierPilotCircleTree001737.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001736.covered FourierPilotCircleTree001737.covered
#print axioms covered
end FourierPilotCircleTree001735


/- Preserved declarations from candidate module FourierPilotCircleTree001863. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001863
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![5, 6, 4, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001864.state FourierPilotCircleTree001909.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001864.covered FourierPilotCircleTree001909.covered
#print axioms covered
end FourierPilotCircleTree001863


/- Preserved declarations from candidate module FourierPilotCircleTree001925. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001925
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![6, 5, 7, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001926.state FourierPilotCircleTree001927.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001926.covered FourierPilotCircleTree001927.covered
#print axioms covered
end FourierPilotCircleTree001925


/- Preserved declarations from candidate module FourierPilotCircleTree002048. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002048
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![5, 6, 4, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002049.state FourierPilotCircleTree002050.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002049.covered FourierPilotCircleTree002050.covered
#print axioms covered
end FourierPilotCircleTree002048


/- Preserved declarations from candidate module FourierPilotCircleTree002156. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002156
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![6, 5, 7, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002157.state FourierPilotCircleTree002204.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002157.covered FourierPilotCircleTree002204.covered
#print axioms covered
end FourierPilotCircleTree002156
