import FourierPilotCircleTree003008
import FourierPilotCircleTree003025
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003007
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![6, 4, 7, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003008.state FourierPilotCircleTree003025.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003008.covered FourierPilotCircleTree003025.covered
#print axioms covered
end FourierPilotCircleTree003007
