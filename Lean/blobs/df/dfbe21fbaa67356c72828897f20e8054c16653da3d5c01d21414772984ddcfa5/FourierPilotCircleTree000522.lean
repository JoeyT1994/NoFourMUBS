import FourierPilotCircleTree000523
import FourierPilotCircleTree000524
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000522
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![57, 57, 63, 87, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000523.state FourierPilotCircleTree000524.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000523.covered FourierPilotCircleTree000524.covered
#print axioms covered
end FourierPilotCircleTree000522
