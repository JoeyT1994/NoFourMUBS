import FourierPilotCircleTree002532
import FourierPilotCircleTree002533
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002531
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![95, 38, 63, 63, 104]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002532.state FourierPilotCircleTree002533.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002532.covered FourierPilotCircleTree002533.covered
#print axioms covered
end FourierPilotCircleTree002531
