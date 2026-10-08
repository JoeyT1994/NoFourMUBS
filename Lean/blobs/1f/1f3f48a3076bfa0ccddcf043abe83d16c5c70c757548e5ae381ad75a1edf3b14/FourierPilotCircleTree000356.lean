import FourierPilotCircleTree000357
import FourierPilotCircleTree000370
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000356
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![14, 10, 13, 22, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000357.state FourierPilotCircleTree000370.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000357.covered FourierPilotCircleTree000370.covered
#print axioms covered
end FourierPilotCircleTree000356
