import FourierPilotCircleTree002032
import FourierPilotCircleTree002033
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002031
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![37, 59, 16, 45, 51]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002032.state FourierPilotCircleTree002033.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002032.covered FourierPilotCircleTree002033.covered
#print axioms covered
end FourierPilotCircleTree002031
