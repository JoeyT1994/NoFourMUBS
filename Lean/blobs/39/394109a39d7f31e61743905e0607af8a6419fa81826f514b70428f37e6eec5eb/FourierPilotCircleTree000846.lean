import FourierPilotCircleTree000847
import FourierPilotCircleTree000854
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000846
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![91, 93, 41, 52, 61]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000847.state FourierPilotCircleTree000854.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000847.covered FourierPilotCircleTree000854.covered
#print axioms covered
end FourierPilotCircleTree000846
