import FourierPilotCircleTree001099
import FourierPilotCircleTree001104
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001098
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![114, 57, 32, 87, 87]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001099.state FourierPilotCircleTree001104.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001099.covered FourierPilotCircleTree001104.covered
#print axioms covered
end FourierPilotCircleTree001098
