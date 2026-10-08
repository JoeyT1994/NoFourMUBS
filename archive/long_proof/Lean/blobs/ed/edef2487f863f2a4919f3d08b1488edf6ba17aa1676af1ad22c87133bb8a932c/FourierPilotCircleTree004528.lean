import FourierPilotCircleTree004529
import FourierPilotCircleTree004580
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004528
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![3, 2, 3, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004529.state FourierPilotCircleTree004580.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004529.covered FourierPilotCircleTree004580.covered
#print axioms covered
end FourierPilotCircleTree004528
