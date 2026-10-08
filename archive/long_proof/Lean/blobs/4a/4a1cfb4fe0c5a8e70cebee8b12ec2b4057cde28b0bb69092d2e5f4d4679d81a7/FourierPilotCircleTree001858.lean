import FourierPilotCircleTree001859
import FourierPilotCircleTree001912
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001858
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![2, 3, 2, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001859.state FourierPilotCircleTree001912.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001859.covered FourierPilotCircleTree001912.covered
#print axioms covered
end FourierPilotCircleTree001858
