import FourierPilotCircleTree003808
import FourierPilotCircleTree003809
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003807
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![9, 27, 15, 15, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003808.state FourierPilotCircleTree003809.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003808.covered FourierPilotCircleTree003809.covered
#print axioms covered
end FourierPilotCircleTree003807
