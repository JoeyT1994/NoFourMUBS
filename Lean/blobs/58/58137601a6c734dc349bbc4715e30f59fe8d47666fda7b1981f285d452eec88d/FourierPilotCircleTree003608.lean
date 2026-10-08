import FourierPilotCircleTree003609
import FourierPilotCircleTree003610
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003608
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![5, 6, 7, 6, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003609.state FourierPilotCircleTree003610.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003609.covered FourierPilotCircleTree003610.covered
#print axioms covered
end FourierPilotCircleTree003608
