import FourierPilotCircleTree002557
import FourierPilotCircleTree002590
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002556
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![4, 13, 5, 6, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002557.state FourierPilotCircleTree002590.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002557.covered FourierPilotCircleTree002590.covered
#print axioms covered
end FourierPilotCircleTree002556
