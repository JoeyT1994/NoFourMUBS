import FourierPilotCircleTree004370
import FourierPilotCircleTree004375
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004369
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![55, 17, 20, 42, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004370.state FourierPilotCircleTree004375.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004370.covered FourierPilotCircleTree004375.covered
#print axioms covered
end FourierPilotCircleTree004369
