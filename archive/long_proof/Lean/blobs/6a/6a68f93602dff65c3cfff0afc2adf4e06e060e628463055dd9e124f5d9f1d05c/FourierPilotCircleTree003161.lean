import FourierPilotCircleTree003162
import FourierPilotCircleTree003163
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003161
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![8, 27, 20, 10, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003162.state FourierPilotCircleTree003163.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003162.covered FourierPilotCircleTree003163.covered
#print axioms covered
end FourierPilotCircleTree003161
