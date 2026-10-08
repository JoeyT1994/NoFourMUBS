import FourierPilotCircleTree001128
import FourierPilotCircleTree001129
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001127
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![2, 2, 3, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001128.state FourierPilotCircleTree001129.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001128.covered FourierPilotCircleTree001129.covered
#print axioms covered
end FourierPilotCircleTree001127
