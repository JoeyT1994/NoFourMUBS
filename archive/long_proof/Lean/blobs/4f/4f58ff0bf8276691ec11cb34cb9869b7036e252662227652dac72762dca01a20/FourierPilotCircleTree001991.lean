import FourierPilotCircleTree001992
import FourierPilotCircleTree001993
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001991
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![2, 2, 3, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001992.state FourierPilotCircleTree001993.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001992.covered FourierPilotCircleTree001993.covered
#print axioms covered
end FourierPilotCircleTree001991
