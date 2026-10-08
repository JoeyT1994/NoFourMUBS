import FourierPilotCircleTree003947
import FourierPilotCircleTree003948
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003946
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![3, 2, 2, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003947.state FourierPilotCircleTree003948.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003947.covered FourierPilotCircleTree003948.covered
#print axioms covered
end FourierPilotCircleTree003946
