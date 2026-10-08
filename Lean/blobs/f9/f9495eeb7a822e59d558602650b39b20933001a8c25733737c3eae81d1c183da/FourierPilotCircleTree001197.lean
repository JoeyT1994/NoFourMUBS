import FourierPilotCircleTree001198
import FourierPilotCircleTree001199
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001197
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![9, 13, 15, 15, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001198.state FourierPilotCircleTree001199.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001198.covered FourierPilotCircleTree001199.covered
#print axioms covered
end FourierPilotCircleTree001197
