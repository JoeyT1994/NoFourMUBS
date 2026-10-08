import FourierPilotCircleTree000509
import FourierPilotCircleTree000510
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000508
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![28, 28, 15, 21, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000509.state FourierPilotCircleTree000510.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000509.covered FourierPilotCircleTree000510.covered
#print axioms covered
end FourierPilotCircleTree000508
