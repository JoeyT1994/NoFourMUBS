import FourierPilotCircleTree004882
import FourierPilotCircleTree004883
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004881
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![22, 46, 20, 26, 30]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004882.state FourierPilotCircleTree004883.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004882.covered FourierPilotCircleTree004883.covered
#print axioms covered
end FourierPilotCircleTree004881
