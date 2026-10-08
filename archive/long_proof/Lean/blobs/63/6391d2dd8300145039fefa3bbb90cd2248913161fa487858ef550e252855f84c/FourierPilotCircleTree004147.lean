import FourierPilotCircleTree004148
import FourierPilotCircleTree004153
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004147
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![54, 37, 41, 32, 51]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004148.state FourierPilotCircleTree004153.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004148.covered FourierPilotCircleTree004153.covered
#print axioms covered
end FourierPilotCircleTree004147
