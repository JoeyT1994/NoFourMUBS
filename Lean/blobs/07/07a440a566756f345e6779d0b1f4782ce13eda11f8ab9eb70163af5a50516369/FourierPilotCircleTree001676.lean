import FourierPilotCircleTree001677
import FourierPilotCircleTree001678
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001676
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![5, 3, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001677.state FourierPilotCircleTree001678.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001677.covered FourierPilotCircleTree001678.covered
#print axioms covered
end FourierPilotCircleTree001676
