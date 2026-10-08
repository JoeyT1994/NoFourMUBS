import FourierPilotCircleTree002817
import FourierPilotCircleTree002830
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002816
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![49, 46, 16, 42, 53]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002817.state FourierPilotCircleTree002830.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002817.covered FourierPilotCircleTree002830.covered
#print axioms covered
end FourierPilotCircleTree002816
