import FourierPilotCircleTree004147
import FourierPilotCircleTree004154
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004146
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![54, 37, 41, 16, 51]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004147.state FourierPilotCircleTree004154.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004147.covered FourierPilotCircleTree004154.covered
#print axioms covered
end FourierPilotCircleTree004146
