import FourierPilotCircleTree002568
import FourierPilotCircleTree002585
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002567
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![18, 27, 20, 25, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002568.state FourierPilotCircleTree002585.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002568.covered FourierPilotCircleTree002585.covered
#print axioms covered
end FourierPilotCircleTree002567
