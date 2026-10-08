import FourierPilotCircleTree000310
import FourierPilotCircleTree000327
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000309
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![12, 9, 8, 4, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000310.state FourierPilotCircleTree000327.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000310.covered FourierPilotCircleTree000327.covered
#print axioms covered
end FourierPilotCircleTree000309
