import FourierPilotCircleTree003105
import FourierPilotCircleTree003112
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003104
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![29, 18, 31, 50, 22]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003105.state FourierPilotCircleTree003112.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003105.covered FourierPilotCircleTree003112.covered
#print axioms covered
end FourierPilotCircleTree003104
