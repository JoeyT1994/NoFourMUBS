import FourierPilotCircleTree002573
import FourierPilotCircleTree002584
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002572
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![37, 27, 20, 51, 16]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002573.state FourierPilotCircleTree002584.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002573.covered FourierPilotCircleTree002584.covered
#print axioms covered
end FourierPilotCircleTree002572
