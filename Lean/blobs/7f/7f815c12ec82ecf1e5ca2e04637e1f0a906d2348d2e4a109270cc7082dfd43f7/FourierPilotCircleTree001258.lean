import FourierPilotCircleTree001259
import FourierPilotCircleTree001380
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001258
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![3, 2, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001259.state FourierPilotCircleTree001380.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001259.covered FourierPilotCircleTree001380.covered
#print axioms covered
end FourierPilotCircleTree001258
