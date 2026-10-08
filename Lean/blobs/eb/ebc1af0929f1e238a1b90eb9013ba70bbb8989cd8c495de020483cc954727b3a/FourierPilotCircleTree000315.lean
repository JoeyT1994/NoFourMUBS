import FourierPilotCircleTree000316
import FourierPilotCircleTree000323
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000315
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![24, 19, 16, 8, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000316.state FourierPilotCircleTree000323.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000316.covered FourierPilotCircleTree000323.covered
#print axioms covered
end FourierPilotCircleTree000315
