import FourierPilotCircleTree003114
import FourierPilotCircleTree003115
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003113
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![29, 18, 31, 51, 22]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003114.state FourierPilotCircleTree003115.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003114.covered FourierPilotCircleTree003115.covered
#print axioms covered
end FourierPilotCircleTree003113
