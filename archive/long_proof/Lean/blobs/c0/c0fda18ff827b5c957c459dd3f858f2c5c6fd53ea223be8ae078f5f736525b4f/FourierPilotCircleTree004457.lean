import FourierPilotCircleTree004458
import FourierPilotCircleTree004459
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004457
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![2, 2, 3, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004458.state FourierPilotCircleTree004459.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004458.covered FourierPilotCircleTree004459.covered
#print axioms covered
end FourierPilotCircleTree004457
