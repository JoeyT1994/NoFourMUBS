import FourierPilotCircleTree003445
import FourierPilotCircleTree003456
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003444
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![37, 27, 20, 51, 16]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003445.state FourierPilotCircleTree003456.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003445.covered FourierPilotCircleTree003456.covered
#print axioms covered
end FourierPilotCircleTree003444
