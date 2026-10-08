import FourierPilotCircleTree002171
import FourierPilotCircleTree002172
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002170
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![27, 20, 15, 8, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002171.state FourierPilotCircleTree002172.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002171.covered FourierPilotCircleTree002172.covered
#print axioms covered
end FourierPilotCircleTree002170
