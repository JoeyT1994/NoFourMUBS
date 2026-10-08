import FourierPilotCircleTree001633
import FourierPilotCircleTree001634
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001632
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![5, 7, 3, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001633.state FourierPilotCircleTree001634.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001633.covered FourierPilotCircleTree001634.covered
#print axioms covered
end FourierPilotCircleTree001632
