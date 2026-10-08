import FourierPilotCircleTree001066
import FourierPilotCircleTree001067
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001065
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![7, 3, 2, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001066.state FourierPilotCircleTree001067.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001066.covered FourierPilotCircleTree001067.covered
#print axioms covered
end FourierPilotCircleTree001065
