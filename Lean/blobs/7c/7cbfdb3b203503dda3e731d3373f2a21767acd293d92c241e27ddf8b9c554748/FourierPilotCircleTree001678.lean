import FourierPilotCircleTree001679
import FourierPilotCircleTree001728
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001678
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![5, 7, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001679.state FourierPilotCircleTree001728.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001679.covered FourierPilotCircleTree001728.covered
#print axioms covered
end FourierPilotCircleTree001678
