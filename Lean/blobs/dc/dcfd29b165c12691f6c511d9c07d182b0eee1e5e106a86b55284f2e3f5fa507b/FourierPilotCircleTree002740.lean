import FourierPilotCircleTree002741
import FourierPilotCircleTree002780
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002740
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![11, 6, 7, 6, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002741.state FourierPilotCircleTree002780.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002741.covered FourierPilotCircleTree002780.covered
#print axioms covered
end FourierPilotCircleTree002740
