import FourierPilotCircleTree004764
import FourierPilotCircleTree004767
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004763
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![7, 12, 4, 5, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004764.state FourierPilotCircleTree004767.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004764.covered FourierPilotCircleTree004767.covered
#print axioms covered
end FourierPilotCircleTree004763
