import FourierPilotCircleTree002139
import FourierPilotCircleTree002140
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002138
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![6, 4, 7, 4, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002139.state FourierPilotCircleTree002140.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002139.covered FourierPilotCircleTree002140.covered
#print axioms covered
end FourierPilotCircleTree002138
