import FourierPilotCircleTree000003
import FourierPilotCircleTree000004
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000002
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, false]
def state : State := ![2, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000003.state FourierPilotCircleTree000004.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000003.covered FourierPilotCircleTree000004.covered
#print axioms covered
end FourierPilotCircleTree000002
