import FourierPilotCircleTree002766
import FourierPilotCircleTree002767
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002765
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![93, 98, 63, 53, 42]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002766.state FourierPilotCircleTree002767.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002766.covered FourierPilotCircleTree002767.covered
#print axioms covered
end FourierPilotCircleTree002765
