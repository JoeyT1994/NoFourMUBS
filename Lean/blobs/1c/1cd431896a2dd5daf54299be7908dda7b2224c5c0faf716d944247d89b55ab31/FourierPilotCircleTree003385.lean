import FourierPilotCircleTree003386
import FourierPilotCircleTree003409
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003385
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![23, 9, 15, 15, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003386.state FourierPilotCircleTree003409.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003386.covered FourierPilotCircleTree003409.covered
#print axioms covered
end FourierPilotCircleTree003385
