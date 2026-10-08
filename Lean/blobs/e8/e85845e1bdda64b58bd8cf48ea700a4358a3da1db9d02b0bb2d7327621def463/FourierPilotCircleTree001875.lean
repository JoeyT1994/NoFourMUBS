import FourierPilotCircleTree001876
import FourierPilotCircleTree001905
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001875
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![23, 12, 8, 13, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001876.state FourierPilotCircleTree001905.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001876.covered FourierPilotCircleTree001905.covered
#print axioms covered
end FourierPilotCircleTree001875
