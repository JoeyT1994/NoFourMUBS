import FourierPilotCircleTree001138
import FourierPilotCircleTree001139
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001137
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![2, 3, 3, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001138.state FourierPilotCircleTree001139.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001138.covered FourierPilotCircleTree001139.covered
#print axioms covered
end FourierPilotCircleTree001137
