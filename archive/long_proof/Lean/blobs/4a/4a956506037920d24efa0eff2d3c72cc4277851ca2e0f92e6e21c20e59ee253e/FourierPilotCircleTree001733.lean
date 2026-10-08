import FourierPilotCircleTree001734
import FourierPilotCircleTree001787
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001733
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![3, 2, 2, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001734.state FourierPilotCircleTree001787.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001734.covered FourierPilotCircleTree001787.covered
#print axioms covered
end FourierPilotCircleTree001733
