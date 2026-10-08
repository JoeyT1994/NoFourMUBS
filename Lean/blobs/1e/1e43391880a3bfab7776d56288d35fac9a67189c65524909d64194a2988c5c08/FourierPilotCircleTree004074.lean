import FourierPilotCircleTree004075
import FourierPilotCircleTree004076
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004074
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![10, 7, 13, 7, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004075.state FourierPilotCircleTree004076.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004075.covered FourierPilotCircleTree004076.covered
#print axioms covered
end FourierPilotCircleTree004074
