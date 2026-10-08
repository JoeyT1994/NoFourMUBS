import FourierPilotCircleTree001266
import FourierPilotCircleTree001313
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001265
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![6, 5, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001266.state FourierPilotCircleTree001313.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001266.covered FourierPilotCircleTree001313.covered
#print axioms covered
end FourierPilotCircleTree001265
