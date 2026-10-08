import FourierPilotCircleTree001740
import FourierPilotCircleTree001741
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001739
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![6, 4, 5, 5, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001740.state FourierPilotCircleTree001741.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001740.covered FourierPilotCircleTree001741.covered
#print axioms covered
end FourierPilotCircleTree001739
