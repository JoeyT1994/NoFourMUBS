import FourierPilotCircleTree001642
import FourierPilotCircleTree001643
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001641
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![11, 14, 7, 4, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001642.state FourierPilotCircleTree001643.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001642.covered FourierPilotCircleTree001643.covered
#print axioms covered
end FourierPilotCircleTree001641
