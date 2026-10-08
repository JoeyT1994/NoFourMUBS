import FourierPilotCircleTree003801
import FourierPilotCircleTree003802
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003800
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![9, 13, 7, 7, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003801.state FourierPilotCircleTree003802.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003801.covered FourierPilotCircleTree003802.covered
#print axioms covered
end FourierPilotCircleTree003800
