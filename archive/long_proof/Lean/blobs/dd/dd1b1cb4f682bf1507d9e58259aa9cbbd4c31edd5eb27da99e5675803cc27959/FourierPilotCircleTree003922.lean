import FourierPilotCircleTree003923
import FourierPilotCircleTree003924
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003922
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![7, 2, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003923.state FourierPilotCircleTree003924.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003923.covered FourierPilotCircleTree003924.covered
#print axioms covered
end FourierPilotCircleTree003922
