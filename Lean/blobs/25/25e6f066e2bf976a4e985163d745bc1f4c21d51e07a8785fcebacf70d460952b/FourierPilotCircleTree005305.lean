import FourierPilotCircleTree005306
import FourierPilotCircleTree005309
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005305
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![27, 18, 20, 31, 25]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005306.state FourierPilotCircleTree005309.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005306.covered FourierPilotCircleTree005309.covered
#print axioms covered
end FourierPilotCircleTree005305
