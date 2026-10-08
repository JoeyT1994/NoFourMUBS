import FourierPilotCircleTree001697
import FourierPilotCircleTree001698
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001696
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![20, 30, 27, 26, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001697.state FourierPilotCircleTree001698.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001697.covered FourierPilotCircleTree001698.covered
#print axioms covered
end FourierPilotCircleTree001696
