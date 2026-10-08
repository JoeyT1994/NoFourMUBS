import FourierPilotCircleTree003764
import FourierPilotCircleTree003783
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003763
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![9, 14, 15, 11, 12]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003764.state FourierPilotCircleTree003783.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003764.covered FourierPilotCircleTree003783.covered
#print axioms covered
end FourierPilotCircleTree003763
