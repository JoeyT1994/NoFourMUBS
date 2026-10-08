import FourierPilotCircleTree003759
import FourierPilotCircleTree003760
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003758
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![4, 7, 7, 11, 12]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003759.state FourierPilotCircleTree003760.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003759.covered FourierPilotCircleTree003760.covered
#print axioms covered
end FourierPilotCircleTree003758
