import FourierPilotCircleTree003450
import FourierPilotCircleTree003453
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003449
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![37, 54, 41, 102, 32]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003450.state FourierPilotCircleTree003453.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003450.covered FourierPilotCircleTree003453.covered
#print axioms covered
end FourierPilotCircleTree003449
