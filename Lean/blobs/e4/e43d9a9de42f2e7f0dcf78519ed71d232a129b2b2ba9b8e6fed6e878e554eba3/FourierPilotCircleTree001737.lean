import FourierPilotCircleTree001738
import FourierPilotCircleTree001739
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001737
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![6, 4, 5, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001738.state FourierPilotCircleTree001739.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001738.covered FourierPilotCircleTree001739.covered
#print axioms covered
end FourierPilotCircleTree001737
