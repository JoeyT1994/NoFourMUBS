import FourierPilotCircleTree005442
import FourierPilotCircleTree005443
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005441
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![11, 14, 7, 7, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005442.state FourierPilotCircleTree005443.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005442.covered FourierPilotCircleTree005443.covered
#print axioms covered
end FourierPilotCircleTree005441
