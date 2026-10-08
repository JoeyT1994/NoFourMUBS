import FourierPilotCircleTree000625
import FourierPilotCircleTree000654
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000624
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![23, 22, 20, 15, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000625.state FourierPilotCircleTree000654.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000625.covered FourierPilotCircleTree000654.covered
#print axioms covered
end FourierPilotCircleTree000624
