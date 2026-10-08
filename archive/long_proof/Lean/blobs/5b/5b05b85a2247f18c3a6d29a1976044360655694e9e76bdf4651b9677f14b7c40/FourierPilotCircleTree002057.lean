import FourierPilotCircleTree002058
import FourierPilotCircleTree002093
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002057
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![10, 13, 8, 15, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002058.state FourierPilotCircleTree002093.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002058.covered FourierPilotCircleTree002093.covered
#print axioms covered
end FourierPilotCircleTree002057
