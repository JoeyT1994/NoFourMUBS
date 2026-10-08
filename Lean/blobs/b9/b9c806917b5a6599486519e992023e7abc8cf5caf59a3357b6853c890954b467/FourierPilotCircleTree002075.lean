import FourierPilotCircleTree002076
import FourierPilotCircleTree002077
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002075
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![80, 111, 32, 61, 34]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002076.state FourierPilotCircleTree002077.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002076.covered FourierPilotCircleTree002077.covered
#print axioms covered
end FourierPilotCircleTree002075
