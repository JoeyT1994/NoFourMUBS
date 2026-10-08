import FourierPilotCircleTree003046
import FourierPilotCircleTree003047
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003045
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![27, 20, 31, 16, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003046.state FourierPilotCircleTree003047.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003046.covered FourierPilotCircleTree003047.covered
#print axioms covered
end FourierPilotCircleTree003045
