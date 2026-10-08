import FourierPilotCircleTree003056
import FourierPilotCircleTree003057
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003055
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![55, 40, 31, 34, 61]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003056.state FourierPilotCircleTree003057.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003056.covered FourierPilotCircleTree003057.covered
#print axioms covered
end FourierPilotCircleTree003055
