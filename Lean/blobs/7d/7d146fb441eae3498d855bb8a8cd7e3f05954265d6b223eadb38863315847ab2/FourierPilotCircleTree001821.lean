import FourierPilotCircleTree001822
import FourierPilotCircleTree001823
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001821
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![24, 9, 8, 15, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001822.state FourierPilotCircleTree001823.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001822.covered FourierPilotCircleTree001823.covered
#print axioms covered
end FourierPilotCircleTree001821
