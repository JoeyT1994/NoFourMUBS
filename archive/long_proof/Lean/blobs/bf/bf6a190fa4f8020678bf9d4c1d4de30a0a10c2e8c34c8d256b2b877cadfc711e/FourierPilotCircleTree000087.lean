import FourierPilotCircleTree000088
import FourierPilotCircleTree000091
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000087
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![20, 29, 27, 16, 22]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000088.state FourierPilotCircleTree000091.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000088.covered FourierPilotCircleTree000091.covered
#print axioms covered
end FourierPilotCircleTree000087
