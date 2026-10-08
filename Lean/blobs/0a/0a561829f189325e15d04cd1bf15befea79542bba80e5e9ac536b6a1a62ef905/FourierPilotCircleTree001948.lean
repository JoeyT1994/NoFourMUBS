import FourierPilotCircleTree001949
import FourierPilotCircleTree001950
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001948
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![49, 46, 31, 42, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001949.state FourierPilotCircleTree001950.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001949.covered FourierPilotCircleTree001950.covered
#print axioms covered
end FourierPilotCircleTree001948
