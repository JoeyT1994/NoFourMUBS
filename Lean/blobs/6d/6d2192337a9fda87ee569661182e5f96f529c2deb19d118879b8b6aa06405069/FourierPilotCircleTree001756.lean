import FourierPilotCircleTree001757
import FourierPilotCircleTree001780
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001756
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![27, 17, 20, 21, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001757.state FourierPilotCircleTree001780.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001757.covered FourierPilotCircleTree001780.covered
#print axioms covered
end FourierPilotCircleTree001756
