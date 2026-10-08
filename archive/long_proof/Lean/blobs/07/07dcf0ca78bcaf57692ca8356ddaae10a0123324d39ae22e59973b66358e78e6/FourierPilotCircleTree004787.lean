import FourierPilotCircleTree004788
import FourierPilotCircleTree004789
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004787
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![24, 12, 13, 8, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004788.state FourierPilotCircleTree004789.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004788.covered FourierPilotCircleTree004789.covered
#print axioms covered
end FourierPilotCircleTree004787
