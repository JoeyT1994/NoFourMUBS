import FourierPilotCircleTree002630
import FourierPilotCircleTree002643
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002629
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![29, 20, 27, 44, 31]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002630.state FourierPilotCircleTree002643.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002630.covered FourierPilotCircleTree002643.covered
#print axioms covered
end FourierPilotCircleTree002629
