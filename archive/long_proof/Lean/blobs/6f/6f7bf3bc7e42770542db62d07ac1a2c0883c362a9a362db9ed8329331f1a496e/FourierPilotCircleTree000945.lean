import FourierPilotCircleTree000946
import FourierPilotCircleTree000947
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000945
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![25, 24, 27, 21, 16]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000946.state FourierPilotCircleTree000947.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000946.covered FourierPilotCircleTree000947.covered
#print axioms covered
end FourierPilotCircleTree000945
