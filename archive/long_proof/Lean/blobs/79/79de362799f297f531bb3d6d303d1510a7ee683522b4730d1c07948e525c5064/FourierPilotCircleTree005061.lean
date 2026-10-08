import FourierPilotCircleTree005062
import FourierPilotCircleTree005063
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005061
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![4, 4, 7, 12, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005062.state FourierPilotCircleTree005063.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005062.covered FourierPilotCircleTree005063.covered
#print axioms covered
end FourierPilotCircleTree005061
