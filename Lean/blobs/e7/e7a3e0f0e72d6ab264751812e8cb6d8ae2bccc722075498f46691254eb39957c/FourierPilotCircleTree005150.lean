import FourierPilotCircleTree005151
import FourierPilotCircleTree005156
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005150
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![114, 57, 32, 87, 87]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005151.state FourierPilotCircleTree005156.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005151.covered FourierPilotCircleTree005156.covered
#print axioms covered
end FourierPilotCircleTree005150
