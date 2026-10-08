import FourierPilotCircleTree003993
import FourierPilotCircleTree003998
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003992
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![3, 3, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003993.state FourierPilotCircleTree003998.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003993.covered FourierPilotCircleTree003998.covered
#print axioms covered
end FourierPilotCircleTree003992
