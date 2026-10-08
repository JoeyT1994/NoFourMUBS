import FourierPilotCircleTree005440
import FourierPilotCircleTree005463
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005439
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![11, 7, 7, 7, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005440.state FourierPilotCircleTree005463.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005440.covered FourierPilotCircleTree005463.covered
#print axioms covered
end FourierPilotCircleTree005439
