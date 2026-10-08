import FourierPilotCircleTree003052
import FourierPilotCircleTree003071
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003051
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![55, 20, 31, 17, 30]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003052.state FourierPilotCircleTree003071.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003052.covered FourierPilotCircleTree003071.covered
#print axioms covered
end FourierPilotCircleTree003051
