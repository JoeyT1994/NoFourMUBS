import FourierPilotCircleTree003776
import FourierPilotCircleTree003777
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003775
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![36, 58, 31, 44, 50]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003776.state FourierPilotCircleTree003777.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003776.covered FourierPilotCircleTree003777.covered
#print axioms covered
end FourierPilotCircleTree003775
