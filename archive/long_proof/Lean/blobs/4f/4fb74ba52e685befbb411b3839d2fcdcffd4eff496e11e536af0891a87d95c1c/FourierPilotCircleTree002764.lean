import FourierPilotCircleTree002765
import FourierPilotCircleTree002774
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002764
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![93, 49, 63, 53, 42]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002765.state FourierPilotCircleTree002774.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002765.covered FourierPilotCircleTree002774.covered
#print axioms covered
end FourierPilotCircleTree002764
