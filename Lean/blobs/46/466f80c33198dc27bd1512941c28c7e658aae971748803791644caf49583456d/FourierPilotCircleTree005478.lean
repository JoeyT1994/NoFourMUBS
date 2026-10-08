import FourierPilotCircleTree005479
import FourierPilotCircleTree005480
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005478
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![12, 4, 4, 4, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005479.state FourierPilotCircleTree005480.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005479.covered FourierPilotCircleTree005480.covered
#print axioms covered
end FourierPilotCircleTree005478
