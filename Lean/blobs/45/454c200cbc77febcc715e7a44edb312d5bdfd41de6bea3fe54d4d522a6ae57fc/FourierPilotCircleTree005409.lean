import FourierPilotCircleTree005410
import FourierPilotCircleTree005411
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005409
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![18, 27, 20, 50, 31]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005410.state FourierPilotCircleTree005411.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005410.covered FourierPilotCircleTree005411.covered
#print axioms covered
end FourierPilotCircleTree005409
