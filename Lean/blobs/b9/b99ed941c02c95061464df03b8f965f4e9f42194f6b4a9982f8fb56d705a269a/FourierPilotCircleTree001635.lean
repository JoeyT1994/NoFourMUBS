import FourierPilotCircleTree001636
import FourierPilotCircleTree001637
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001635
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![5, 7, 7, 4, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001636.state FourierPilotCircleTree001637.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001636.covered FourierPilotCircleTree001637.covered
#print axioms covered
end FourierPilotCircleTree001635
