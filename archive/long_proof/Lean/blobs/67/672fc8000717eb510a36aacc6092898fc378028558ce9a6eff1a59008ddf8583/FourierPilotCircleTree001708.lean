import FourierPilotCircleTree001709
import FourierPilotCircleTree001710
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001708
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![80, 60, 109, 107, 104]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001709.state FourierPilotCircleTree001710.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001709.covered FourierPilotCircleTree001710.covered
#print axioms covered
end FourierPilotCircleTree001708
