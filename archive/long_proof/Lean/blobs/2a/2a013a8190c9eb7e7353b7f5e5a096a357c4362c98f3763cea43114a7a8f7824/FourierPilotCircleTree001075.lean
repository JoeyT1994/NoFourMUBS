import FourierPilotCircleTree001076
import FourierPilotCircleTree001111
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001075
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![14, 7, 4, 10, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001076.state FourierPilotCircleTree001111.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001076.covered FourierPilotCircleTree001111.covered
#print axioms covered
end FourierPilotCircleTree001075
