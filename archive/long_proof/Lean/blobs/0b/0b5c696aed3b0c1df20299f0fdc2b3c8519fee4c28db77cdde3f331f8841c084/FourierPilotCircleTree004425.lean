import FourierPilotCircleTree004426
import FourierPilotCircleTree004427
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004425
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![12, 9, 8, 7, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004426.state FourierPilotCircleTree004427.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004426.covered FourierPilotCircleTree004427.covered
#print axioms covered
end FourierPilotCircleTree004425
