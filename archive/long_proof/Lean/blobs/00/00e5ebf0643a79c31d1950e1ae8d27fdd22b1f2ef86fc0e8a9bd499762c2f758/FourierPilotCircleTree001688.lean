import FourierPilotCircleTree001689
import FourierPilotCircleTree001690
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001688
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![10, 7, 13, 13, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001689.state FourierPilotCircleTree001690.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001689.covered FourierPilotCircleTree001690.covered
#print axioms covered
end FourierPilotCircleTree001688
