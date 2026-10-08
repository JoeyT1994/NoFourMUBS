import FourierPilotCircleTree000075
import FourierPilotCircleTree000076
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000074
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![10, 7, 6, 4, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000075.state FourierPilotCircleTree000076.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000075.covered FourierPilotCircleTree000076.covered
#print axioms covered
end FourierPilotCircleTree000074
