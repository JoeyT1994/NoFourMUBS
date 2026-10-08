import FourierPilotCircleTree001768
import FourierPilotCircleTree001769
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001767
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![55, 17, 41, 42, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001768.state FourierPilotCircleTree001769.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001768.covered FourierPilotCircleTree001769.covered
#print axioms covered
end FourierPilotCircleTree001767
