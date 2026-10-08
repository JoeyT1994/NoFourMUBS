import FourierPilotCircleTree001386
import FourierPilotCircleTree001389
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001385
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![3, 3, 2, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001386.state FourierPilotCircleTree001389.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001386.covered FourierPilotCircleTree001389.covered
#print axioms covered
end FourierPilotCircleTree001385
