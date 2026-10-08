import FourierPilotCircleTree003903
import FourierPilotCircleTree003904
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003902
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![111, 80, 32, 68, 61]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003903.state FourierPilotCircleTree003904.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003903.covered FourierPilotCircleTree003904.covered
#print axioms covered
end FourierPilotCircleTree003902
