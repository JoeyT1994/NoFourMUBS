import FourierPilotCircleTree004315
import FourierPilotCircleTree004316
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004314
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![80, 60, 54, 107, 104]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004315.state FourierPilotCircleTree004316.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004315.covered FourierPilotCircleTree004316.covered
#print axioms covered
end FourierPilotCircleTree004314
