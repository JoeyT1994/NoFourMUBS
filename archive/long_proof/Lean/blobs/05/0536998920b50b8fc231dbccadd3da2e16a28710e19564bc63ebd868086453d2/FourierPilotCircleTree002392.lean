import FourierPilotCircleTree002393
import FourierPilotCircleTree002402
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002392
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![14, 11, 15, 10, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002393.state FourierPilotCircleTree002402.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002393.covered FourierPilotCircleTree002402.covered
#print axioms covered
end FourierPilotCircleTree002392
