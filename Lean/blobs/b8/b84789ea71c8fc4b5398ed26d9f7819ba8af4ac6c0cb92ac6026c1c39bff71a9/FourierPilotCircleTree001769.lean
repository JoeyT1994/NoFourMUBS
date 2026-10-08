import FourierPilotCircleTree001770
import FourierPilotCircleTree001771
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001769
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![55, 35, 41, 42, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001770.state FourierPilotCircleTree001771.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001770.covered FourierPilotCircleTree001771.covered
#print axioms covered
end FourierPilotCircleTree001769
