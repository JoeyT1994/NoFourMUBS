import FourierPilotCircleTree001267
import FourierPilotCircleTree001312
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001266
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![6, 5, 4, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001267.state FourierPilotCircleTree001312.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001267.covered FourierPilotCircleTree001312.covered
#print axioms covered
end FourierPilotCircleTree001266
