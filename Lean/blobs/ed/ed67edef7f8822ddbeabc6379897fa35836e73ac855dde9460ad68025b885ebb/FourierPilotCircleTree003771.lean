import FourierPilotCircleTree003772
import FourierPilotCircleTree003781
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003771
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![18, 29, 31, 22, 25]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003772.state FourierPilotCircleTree003781.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003772.covered FourierPilotCircleTree003781.covered
#print axioms covered
end FourierPilotCircleTree003771
