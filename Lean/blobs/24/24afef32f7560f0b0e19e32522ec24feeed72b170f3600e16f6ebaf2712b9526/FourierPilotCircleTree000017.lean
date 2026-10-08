import FourierPilotCircleTree000018
import FourierPilotCircleTree000063
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000017
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![2, 3, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000018.state FourierPilotCircleTree000063.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000018.covered FourierPilotCircleTree000063.covered
#print axioms covered
end FourierPilotCircleTree000017
