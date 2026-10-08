import FourierPilotCircleTree000723
import FourierPilotCircleTree000788
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000722
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![3, 3, 3, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000723.state FourierPilotCircleTree000788.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000723.covered FourierPilotCircleTree000788.covered
#print axioms covered
end FourierPilotCircleTree000722
