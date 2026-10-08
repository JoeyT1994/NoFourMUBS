import FourierPilotCircleTree001758
import FourierPilotCircleTree001759
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001757
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![27, 17, 20, 42, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001758.state FourierPilotCircleTree001759.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001758.covered FourierPilotCircleTree001759.covered
#print axioms covered
end FourierPilotCircleTree001757
