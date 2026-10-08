import FourierPilotCircleTree003989
import FourierPilotCircleTree003990
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003988
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![3, 2, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003989.state FourierPilotCircleTree003990.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003989.covered FourierPilotCircleTree003990.covered
#print axioms covered
end FourierPilotCircleTree003988
