import FourierPilotCircleTree003049
import FourierPilotCircleTree003072
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003048
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![27, 20, 31, 17, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003049.state FourierPilotCircleTree003072.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003049.covered FourierPilotCircleTree003072.covered
#print axioms covered
end FourierPilotCircleTree003048
