import FourierPilotCircleTree000705
import FourierPilotCircleTree000718
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000704
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![7, 3, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000705.state FourierPilotCircleTree000718.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000705.covered FourierPilotCircleTree000718.covered
#print axioms covered
end FourierPilotCircleTree000704
