import FourierPilotCircleTree001694
import FourierPilotCircleTree001723
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001693
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![20, 15, 27, 13, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001694.state FourierPilotCircleTree001723.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001694.covered FourierPilotCircleTree001723.covered
#print axioms covered
end FourierPilotCircleTree001693
