import FourierPilotCircleTree000813
import FourierPilotCircleTree000820
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000812
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![11, 11, 10, 6, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000813.state FourierPilotCircleTree000820.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000813.covered FourierPilotCircleTree000820.covered
#print axioms covered
end FourierPilotCircleTree000812
