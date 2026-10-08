import FourierPilotCircleTree001753
import FourierPilotCircleTree001754
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001752
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![27, 8, 20, 21, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001753.state FourierPilotCircleTree001754.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001753.covered FourierPilotCircleTree001754.covered
#print axioms covered
end FourierPilotCircleTree001752
