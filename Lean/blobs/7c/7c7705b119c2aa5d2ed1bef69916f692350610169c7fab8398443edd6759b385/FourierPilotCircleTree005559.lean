import FourierPilotCircleTree005560
import FourierPilotCircleTree005633
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005559
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![2, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005560.state FourierPilotCircleTree005633.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005560.covered FourierPilotCircleTree005633.covered
#print axioms covered
end FourierPilotCircleTree005559
