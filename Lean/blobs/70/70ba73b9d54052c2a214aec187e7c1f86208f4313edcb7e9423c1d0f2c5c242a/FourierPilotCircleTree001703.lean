import FourierPilotCircleTree001704
import FourierPilotCircleTree001705
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001703
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![40, 60, 54, 53, 104]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001704.state FourierPilotCircleTree001705.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001704.covered FourierPilotCircleTree001705.covered
#print axioms covered
end FourierPilotCircleTree001703
