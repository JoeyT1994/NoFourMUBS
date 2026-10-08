import FourierPilotCircleTree000897
import FourierPilotCircleTree000900
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000896
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![3, 2, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000897.state FourierPilotCircleTree000900.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000897.covered FourierPilotCircleTree000900.covered
#print axioms covered
end FourierPilotCircleTree000896
