import FourierPilotCircleTree000106
import FourierPilotCircleTree000147
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000105
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![3, 2, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000106.state FourierPilotCircleTree000147.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000106.covered FourierPilotCircleTree000147.covered
#print axioms covered
end FourierPilotCircleTree000105
