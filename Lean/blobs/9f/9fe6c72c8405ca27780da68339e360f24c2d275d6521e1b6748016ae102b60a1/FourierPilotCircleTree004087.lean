import FourierPilotCircleTree004088
import FourierPilotCircleTree004103
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004087
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![20, 29, 27, 31, 22]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004088.state FourierPilotCircleTree004103.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004088.covered FourierPilotCircleTree004103.covered
#print axioms covered
end FourierPilotCircleTree004087
