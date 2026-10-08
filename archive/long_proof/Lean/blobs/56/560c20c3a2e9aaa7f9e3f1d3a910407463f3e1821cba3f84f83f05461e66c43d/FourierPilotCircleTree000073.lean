import FourierPilotCircleTree000074
import FourierPilotCircleTree000099
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000073
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![5, 7, 6, 4, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000074.state FourierPilotCircleTree000099.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000074.covered FourierPilotCircleTree000099.covered
#print axioms covered
end FourierPilotCircleTree000073
