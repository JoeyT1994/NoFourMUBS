import FourierPilotCircleTree001736
import FourierPilotCircleTree001737
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001735
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![6, 4, 2, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001736.state FourierPilotCircleTree001737.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001736.covered FourierPilotCircleTree001737.covered
#print axioms covered
end FourierPilotCircleTree001735
