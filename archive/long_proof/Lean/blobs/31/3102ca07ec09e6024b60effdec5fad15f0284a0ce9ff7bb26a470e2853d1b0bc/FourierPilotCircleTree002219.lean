import FourierPilotCircleTree002220
import FourierPilotCircleTree002221
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002219
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![14, 4, 7, 12, 11]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002220.state FourierPilotCircleTree002221.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002220.covered FourierPilotCircleTree002221.covered
#print axioms covered
end FourierPilotCircleTree002219
