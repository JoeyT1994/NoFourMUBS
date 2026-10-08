import FourierPilotCircleTree001133
import FourierPilotCircleTree001136
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001132
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![2, 3, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001133.state FourierPilotCircleTree001136.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001133.covered FourierPilotCircleTree001136.covered
#print axioms covered
end FourierPilotCircleTree001132
