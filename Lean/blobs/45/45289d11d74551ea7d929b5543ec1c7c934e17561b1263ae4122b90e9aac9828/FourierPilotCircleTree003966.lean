import FourierPilotCircleTree003967
import FourierPilotCircleTree003978
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003966
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![29, 18, 8, 25, 22]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003967.state FourierPilotCircleTree003978.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003967.covered FourierPilotCircleTree003978.covered
#print axioms covered
end FourierPilotCircleTree003966
