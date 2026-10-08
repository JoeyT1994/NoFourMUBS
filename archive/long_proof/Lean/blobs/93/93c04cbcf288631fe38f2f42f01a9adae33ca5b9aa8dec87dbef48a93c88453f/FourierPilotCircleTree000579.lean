import FourierPilotCircleTree000580
import FourierPilotCircleTree000581
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000579
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, false]
def state : State := ![6, 2, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000580.state FourierPilotCircleTree000581.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000580.covered FourierPilotCircleTree000581.covered
#print axioms covered
end FourierPilotCircleTree000579
