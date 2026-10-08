import FourierPilotCircleTree001776
import FourierPilotCircleTree001777
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001775
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![111, 35, 82, 84, 87]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001776.state FourierPilotCircleTree001777.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001776.covered FourierPilotCircleTree001777.covered
#print axioms covered
end FourierPilotCircleTree001775
