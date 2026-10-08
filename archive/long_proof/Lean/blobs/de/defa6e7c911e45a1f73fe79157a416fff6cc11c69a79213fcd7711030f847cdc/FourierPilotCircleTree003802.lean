import FourierPilotCircleTree003803
import FourierPilotCircleTree003804
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003802
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![9, 13, 15, 7, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003803.state FourierPilotCircleTree003804.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003803.covered FourierPilotCircleTree003804.covered
#print axioms covered
end FourierPilotCircleTree003802
