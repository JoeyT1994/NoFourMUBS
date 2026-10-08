import FourierPilotCircleTree003955
import FourierPilotCircleTree003956
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003954
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![7, 4, 4, 12, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003955.state FourierPilotCircleTree003956.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003955.covered FourierPilotCircleTree003956.covered
#print axioms covered
end FourierPilotCircleTree003954
