import FourierPilotCircleTree001707
import FourierPilotCircleTree001708
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001706
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![80, 60, 54, 107, 104]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001707.state FourierPilotCircleTree001708.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001707.covered FourierPilotCircleTree001708.covered
#print axioms covered
end FourierPilotCircleTree001706
