import FourierPilotCircleTree004665
import FourierPilotCircleTree004666
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004664
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![11, 11, 10, 15, 12]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004665.state FourierPilotCircleTree004666.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004665.covered FourierPilotCircleTree004666.covered
#print axioms covered
end FourierPilotCircleTree004664
