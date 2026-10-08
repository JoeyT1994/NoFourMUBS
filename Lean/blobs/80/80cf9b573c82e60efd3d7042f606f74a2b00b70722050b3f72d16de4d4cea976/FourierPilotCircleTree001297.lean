import FourierPilotCircleTree001298
import FourierPilotCircleTree001299
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001297
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![111, 80, 64, 68, 123]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001298.state FourierPilotCircleTree001299.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001298.covered FourierPilotCircleTree001299.covered
#print axioms covered
end FourierPilotCircleTree001297
