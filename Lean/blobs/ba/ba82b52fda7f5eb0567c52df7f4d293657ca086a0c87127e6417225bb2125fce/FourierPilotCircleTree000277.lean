import FourierPilotCircleTree000278
import FourierPilotCircleTree000289
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000277
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![23, 14, 15, 15, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000278.state FourierPilotCircleTree000289.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000278.covered FourierPilotCircleTree000289.covered
#print axioms covered
end FourierPilotCircleTree000277
