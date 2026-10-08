import FourierPilotCircleTree001287
import FourierPilotCircleTree001304
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001286
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![55, 40, 16, 17, 30]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001287.state FourierPilotCircleTree001304.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001287.covered FourierPilotCircleTree001304.covered
#print axioms covered
end FourierPilotCircleTree001286
