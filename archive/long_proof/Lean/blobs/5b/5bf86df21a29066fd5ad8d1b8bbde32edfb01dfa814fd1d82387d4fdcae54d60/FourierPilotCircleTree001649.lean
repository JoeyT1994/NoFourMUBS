import FourierPilotCircleTree001650
import FourierPilotCircleTree001651
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001649
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![23, 28, 15, 8, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001650.state FourierPilotCircleTree001651.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001650.covered FourierPilotCircleTree001651.covered
#print axioms covered
end FourierPilotCircleTree001649
