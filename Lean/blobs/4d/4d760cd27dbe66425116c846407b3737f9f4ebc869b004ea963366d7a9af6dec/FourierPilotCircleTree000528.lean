import FourierPilotCircleTree000529
import FourierPilotCircleTree000530
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000528
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![114, 114, 127, 87, 87]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000529.state FourierPilotCircleTree000530.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000529.covered FourierPilotCircleTree000530.covered
#print axioms covered
end FourierPilotCircleTree000528
