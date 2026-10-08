import FourierPilotCircleTree002555
import FourierPilotCircleTree002556
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002554
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![4, 6, 5, 6, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002555.state FourierPilotCircleTree002556.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002555.covered FourierPilotCircleTree002556.covered
#print axioms covered
end FourierPilotCircleTree002554
