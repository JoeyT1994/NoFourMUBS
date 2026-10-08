import FourierPilotCircleTree004602
import FourierPilotCircleTree004609
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004601
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, true]
def state : State := ![2, 3, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004602.state FourierPilotCircleTree004609.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004602.covered FourierPilotCircleTree004609.covered
#print axioms covered
end FourierPilotCircleTree004601
