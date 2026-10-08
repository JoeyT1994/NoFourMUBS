import FourierPilotCircleTree005580
import FourierPilotCircleTree005611
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005579
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![9, 9, 8, 13, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005580.state FourierPilotCircleTree005611.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005580.covered FourierPilotCircleTree005611.covered
#print axioms covered
end FourierPilotCircleTree005579
