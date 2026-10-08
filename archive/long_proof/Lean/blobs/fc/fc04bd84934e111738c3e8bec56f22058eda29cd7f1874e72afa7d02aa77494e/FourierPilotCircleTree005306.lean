import FourierPilotCircleTree005307
import FourierPilotCircleTree005308
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005306
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![27, 18, 20, 31, 50]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005307.state FourierPilotCircleTree005308.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005307.covered FourierPilotCircleTree005308.covered
#print axioms covered
end FourierPilotCircleTree005306
