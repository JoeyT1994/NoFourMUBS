import FourierPilotCircleTree000279
import FourierPilotCircleTree000280
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000278
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![23, 28, 15, 15, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000279.state FourierPilotCircleTree000280.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000279.covered FourierPilotCircleTree000280.covered
#print axioms covered
end FourierPilotCircleTree000278
