import FourierPilotCircleTree001807
import FourierPilotCircleTree001832
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001806
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![6, 2, 2, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001807.state FourierPilotCircleTree001832.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001807.covered FourierPilotCircleTree001832.covered
#print axioms covered
end FourierPilotCircleTree001806
