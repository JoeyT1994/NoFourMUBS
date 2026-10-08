import FourierPilotCircleTree003770
import FourierPilotCircleTree003771
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003769
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![18, 29, 15, 22, 25]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003770.state FourierPilotCircleTree003771.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003770.covered FourierPilotCircleTree003771.covered
#print axioms covered
end FourierPilotCircleTree003769
