import FourierPilotCircleTree004376
import FourierPilotCircleTree004377
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004375
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![55, 17, 41, 42, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004376.state FourierPilotCircleTree004377.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004376.covered FourierPilotCircleTree004377.covered
#print axioms covered
end FourierPilotCircleTree004375
