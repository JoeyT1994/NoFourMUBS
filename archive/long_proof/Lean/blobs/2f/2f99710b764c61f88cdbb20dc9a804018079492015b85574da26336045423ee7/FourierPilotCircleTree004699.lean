import FourierPilotCircleTree004700
import FourierPilotCircleTree004701
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004699
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![93, 91, 82, 123, 104]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004700.state FourierPilotCircleTree004701.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004700.covered FourierPilotCircleTree004701.covered
#print axioms covered
end FourierPilotCircleTree004699
