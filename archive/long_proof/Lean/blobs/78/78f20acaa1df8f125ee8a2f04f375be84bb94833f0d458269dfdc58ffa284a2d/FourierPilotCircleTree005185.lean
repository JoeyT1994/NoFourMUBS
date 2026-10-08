import FourierPilotCircleTree005186
import FourierPilotCircleTree005187
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005185
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![2, 2, 2, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005186.state FourierPilotCircleTree005187.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005186.covered FourierPilotCircleTree005187.covered
#print axioms covered
end FourierPilotCircleTree005185
