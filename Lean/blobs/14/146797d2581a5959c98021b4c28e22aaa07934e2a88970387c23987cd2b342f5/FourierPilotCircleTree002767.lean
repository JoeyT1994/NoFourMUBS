import FourierPilotCircleTree002768
import FourierPilotCircleTree002773
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002767
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![93, 98, 63, 107, 42]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002768.state FourierPilotCircleTree002773.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002768.covered FourierPilotCircleTree002773.covered
#print axioms covered
end FourierPilotCircleTree002767
