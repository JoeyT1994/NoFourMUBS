import FourierPilotCircleTree003949
import FourierPilotCircleTree003986
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003948
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![7, 2, 2, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003949.state FourierPilotCircleTree003986.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003949.covered FourierPilotCircleTree003986.covered
#print axioms covered
end FourierPilotCircleTree003948
