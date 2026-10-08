import FourierPilotCircleTree003898
import FourierPilotCircleTree003911
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003897
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![55, 40, 16, 34, 61]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003898.state FourierPilotCircleTree003911.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003898.covered FourierPilotCircleTree003911.covered
#print axioms covered
end FourierPilotCircleTree003897
