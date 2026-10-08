import FourierPilotCircleTree001821
import FourierPilotCircleTree001826
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001820
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![24, 9, 8, 15, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001821.state FourierPilotCircleTree001826.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001821.covered FourierPilotCircleTree001826.covered
#print axioms covered
end FourierPilotCircleTree001820
