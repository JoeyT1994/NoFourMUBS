import FourierPilotCircleTree005310
import FourierPilotCircleTree005311
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005309
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![27, 18, 20, 31, 51]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005310.state FourierPilotCircleTree005311.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005310.covered FourierPilotCircleTree005311.covered
#print axioms covered
end FourierPilotCircleTree005309
