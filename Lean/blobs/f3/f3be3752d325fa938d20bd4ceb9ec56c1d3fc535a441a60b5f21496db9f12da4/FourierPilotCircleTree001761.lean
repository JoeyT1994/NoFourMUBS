import FourierPilotCircleTree001762
import FourierPilotCircleTree001767
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001761
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![55, 17, 20, 42, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001762.state FourierPilotCircleTree001767.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001762.covered FourierPilotCircleTree001767.covered
#print axioms covered
end FourierPilotCircleTree001761
