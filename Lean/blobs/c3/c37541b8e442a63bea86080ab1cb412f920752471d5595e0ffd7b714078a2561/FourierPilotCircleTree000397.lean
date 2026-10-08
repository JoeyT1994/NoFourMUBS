import FourierPilotCircleTree000398
import FourierPilotCircleTree000441
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000397
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![4, 4, 4, 6, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000398.state FourierPilotCircleTree000441.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000398.covered FourierPilotCircleTree000441.covered
#print axioms covered
end FourierPilotCircleTree000397
