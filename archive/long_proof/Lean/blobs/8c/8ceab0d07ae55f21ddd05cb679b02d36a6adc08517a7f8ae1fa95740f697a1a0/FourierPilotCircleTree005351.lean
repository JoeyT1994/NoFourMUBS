import FourierPilotCircleTree005352
import FourierPilotCircleTree005353
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005351
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![28, 23, 31, 21, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005352.state FourierPilotCircleTree005353.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005352.covered FourierPilotCircleTree005353.covered
#print axioms covered
end FourierPilotCircleTree005351
