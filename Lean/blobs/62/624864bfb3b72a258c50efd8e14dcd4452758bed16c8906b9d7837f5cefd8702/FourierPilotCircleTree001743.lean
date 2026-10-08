import FourierPilotCircleTree001744
import FourierPilotCircleTree001785
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001743
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![13, 4, 5, 5, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001744.state FourierPilotCircleTree001785.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001744.covered FourierPilotCircleTree001785.covered
#print axioms covered
end FourierPilotCircleTree001743
