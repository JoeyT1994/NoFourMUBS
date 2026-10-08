import FourierPilotCircleTree002279
import FourierPilotCircleTree002280
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002278
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![4, 6, 5, 5, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002279.state FourierPilotCircleTree002280.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002279.covered FourierPilotCircleTree002280.covered
#print axioms covered
end FourierPilotCircleTree002278
