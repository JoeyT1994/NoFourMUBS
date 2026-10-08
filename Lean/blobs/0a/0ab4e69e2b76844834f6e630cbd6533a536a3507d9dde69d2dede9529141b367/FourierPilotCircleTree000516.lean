import FourierPilotCircleTree000517
import FourierPilotCircleTree000518
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000516
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![57, 28, 31, 43, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000517.state FourierPilotCircleTree000518.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000517.covered FourierPilotCircleTree000518.covered
#print axioms covered
end FourierPilotCircleTree000516
