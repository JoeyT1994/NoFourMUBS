import FourierPilotCircleTree001017
import FourierPilotCircleTree001018
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
