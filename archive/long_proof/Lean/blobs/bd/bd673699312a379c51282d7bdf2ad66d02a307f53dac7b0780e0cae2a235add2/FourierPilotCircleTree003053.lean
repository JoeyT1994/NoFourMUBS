import FourierPilotCircleTree003054
import FourierPilotCircleTree003055
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003053
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![55, 40, 31, 34, 30]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003054.state FourierPilotCircleTree003055.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003054.covered FourierPilotCircleTree003055.covered
#print axioms covered
end FourierPilotCircleTree003053
