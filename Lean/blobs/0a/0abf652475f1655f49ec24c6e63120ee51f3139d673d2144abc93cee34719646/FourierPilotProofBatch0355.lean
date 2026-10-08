import FourierPilotProofBatch0014

import FourierPilotProofBatch0019

import FourierPilotProofBatch0147

import FourierPilotProofBatch0151

import FourierPilotProofBatch0158

import FourierPilotProofBatch0164

import FourierPilotProofBatch0165

import FourierPilotProofBatch0168

import FourierPilotProofBatch0181

import FourierPilotProofBatch0186

import FourierPilotProofBatch0304

import FourierPilotProofBatch0351

import FourierPilotProofBatch0352

/- Preserved declarations from candidate module FourierPilotCircleTree004001. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004001
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![2, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004002.state FourierPilotCircleTree004057.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004002.covered FourierPilotCircleTree004057.covered
#print axioms covered
end FourierPilotCircleTree004001


/- Preserved declarations from candidate module FourierPilotCircleTree004112. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004112
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![3, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004113.state FourierPilotCircleTree004168.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004113.covered FourierPilotCircleTree004168.covered
#print axioms covered
end FourierPilotCircleTree004112


/- Preserved declarations from candidate module FourierPilotCircleTree004234. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004234
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![2, 3, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004235.state FourierPilotCircleTree004266.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004235.covered FourierPilotCircleTree004266.covered
#print axioms covered
end FourierPilotCircleTree004234


/- Preserved declarations from candidate module FourierPilotCircleTree004339. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004339
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![3, 2, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004340.state FourierPilotCircleTree004411.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004340.covered FourierPilotCircleTree004411.covered
#print axioms covered
end FourierPilotCircleTree004339


/- Preserved declarations from candidate module FourierPilotCircleTree004466. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004466
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![2, 3, 2, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004467.state FourierPilotCircleTree004520.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004467.covered FourierPilotCircleTree004520.covered
#print axioms covered
end FourierPilotCircleTree004466


/- Preserved declarations from candidate module FourierPilotCircleTree004526. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004526
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![3, 2, 3, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004527.state FourierPilotCircleTree004528.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004527.covered FourierPilotCircleTree004528.covered
#print axioms covered
end FourierPilotCircleTree004526


/- Preserved declarations from candidate module FourierPilotCircleTree004645. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004645
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![2, 2, 2, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004646.state FourierPilotCircleTree004647.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004646.covered FourierPilotCircleTree004647.covered
#print axioms covered
end FourierPilotCircleTree004645


/- Preserved declarations from candidate module FourierPilotCircleTree004773. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004773
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![3, 3, 3, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004774.state FourierPilotCircleTree004841.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004774.covered FourierPilotCircleTree004841.covered
#print axioms covered
end FourierPilotCircleTree004773


/- Preserved declarations from candidate module FourierPilotCircleTree004848. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004848
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![2, 2, 2, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004849.state FourierPilotCircleTree004850.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004849.covered FourierPilotCircleTree004850.covered
#print axioms covered
end FourierPilotCircleTree004848


/- Preserved declarations from candidate module FourierPilotCircleTree004976. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004976
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![3, 3, 3, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004977.state FourierPilotCircleTree005044.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004977.covered FourierPilotCircleTree005044.covered
#print axioms covered
end FourierPilotCircleTree004976


/- Preserved declarations from candidate module FourierPilotCircleTree005052. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005052
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![2, 2, 3, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005053.state FourierPilotCircleTree005054.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005053.covered FourierPilotCircleTree005054.covered
#print axioms covered
end FourierPilotCircleTree005052


/- Preserved declarations from candidate module FourierPilotCircleTree005114. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005114
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![3, 3, 2, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005115.state FourierPilotCircleTree005170.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005115.covered FourierPilotCircleTree005170.covered
#print axioms covered
end FourierPilotCircleTree005114


/- Preserved declarations from candidate module FourierPilotCircleTree005563. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005563
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![2, 2, 2, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005564.state FourierPilotCircleTree005565.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005564.covered FourierPilotCircleTree005565.covered
#print axioms covered
end FourierPilotCircleTree005563


/- Preserved declarations from candidate module FourierPilotCircleTree005647. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005647
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![3, 3, 3, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005648.state FourierPilotCircleTree005711.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005648.covered FourierPilotCircleTree005711.covered
#print axioms covered
end FourierPilotCircleTree005647


/- Preserved declarations from candidate module FourierPilotCircleTree000389. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000389
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![2, 2, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000390.state FourierPilotCircleTree000391.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000390.covered FourierPilotCircleTree000391.covered
#print axioms covered
end FourierPilotCircleTree000389


/- Preserved declarations from candidate module FourierPilotCircleTree000474. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000474
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![3, 3, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000475.state FourierPilotCircleTree000540.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000475.covered FourierPilotCircleTree000540.covered
#print axioms covered
end FourierPilotCircleTree000474

#print axioms FourierPilotCircleTree004001.covered
#print axioms FourierPilotCircleTree004112.covered
#print axioms FourierPilotCircleTree004234.covered
#print axioms FourierPilotCircleTree004339.covered
#print axioms FourierPilotCircleTree004466.covered
#print axioms FourierPilotCircleTree004526.covered
#print axioms FourierPilotCircleTree004645.covered
#print axioms FourierPilotCircleTree004773.covered
#print axioms FourierPilotCircleTree004848.covered
#print axioms FourierPilotCircleTree004976.covered
#print axioms FourierPilotCircleTree005052.covered
#print axioms FourierPilotCircleTree005114.covered
#print axioms FourierPilotCircleTree005563.covered
#print axioms FourierPilotCircleTree005647.covered
#print axioms FourierPilotCircleTree000389.covered
#print axioms FourierPilotCircleTree000474.covered
