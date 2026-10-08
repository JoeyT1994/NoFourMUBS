import FourierPilotCircleTree003020
import FourierPilotCircleTree003021
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003019
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![13, 9, 15, 8, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003020.state FourierPilotCircleTree003021.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003020.covered FourierPilotCircleTree003021.covered
#print axioms covered
end FourierPilotCircleTree003019
