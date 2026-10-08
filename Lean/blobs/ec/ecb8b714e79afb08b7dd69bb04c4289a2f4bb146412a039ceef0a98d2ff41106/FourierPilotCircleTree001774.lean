import FourierPilotCircleTree001775
import FourierPilotCircleTree001778
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001774
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![111, 35, 41, 84, 87]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001775.state FourierPilotCircleTree001778.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001775.covered FourierPilotCircleTree001778.covered
#print axioms covered
end FourierPilotCircleTree001774
