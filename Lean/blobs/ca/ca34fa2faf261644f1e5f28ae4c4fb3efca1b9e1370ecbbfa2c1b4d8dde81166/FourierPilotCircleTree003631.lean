import FourierPilotCircleTree003632
import FourierPilotCircleTree003647
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003631
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![46, 49, 31, 53, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003632.state FourierPilotCircleTree003647.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003632.covered FourierPilotCircleTree003647.covered
#print axioms covered
end FourierPilotCircleTree003631
