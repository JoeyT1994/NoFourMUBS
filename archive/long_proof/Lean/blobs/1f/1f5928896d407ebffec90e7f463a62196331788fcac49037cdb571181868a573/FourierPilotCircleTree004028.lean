import FourierPilotCircleTree004029
import FourierPilotCircleTree004030
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004028
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![9, 11, 15, 13, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004029.state FourierPilotCircleTree004030.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004029.covered FourierPilotCircleTree004030.covered
#print axioms covered
end FourierPilotCircleTree004028
