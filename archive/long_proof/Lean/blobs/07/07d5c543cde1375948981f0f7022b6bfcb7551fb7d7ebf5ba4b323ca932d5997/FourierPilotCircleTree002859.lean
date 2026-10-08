import FourierPilotCircleTree002860
import FourierPilotCircleTree002861
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002859
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![2, 2, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002860.state FourierPilotCircleTree002861.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002860.covered FourierPilotCircleTree002861.covered
#print axioms covered
end FourierPilotCircleTree002859
