import FourierPilotCircleTree003836
import FourierPilotCircleTree003857
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003835
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![20, 27, 31, 30, 17]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003836.state FourierPilotCircleTree003857.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003836.covered FourierPilotCircleTree003857.covered
#print axioms covered
end FourierPilotCircleTree003835
