import FourierPilotCircleTree004995
import FourierPilotCircleTree004996
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004994
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![25, 24, 27, 10, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004995.state FourierPilotCircleTree004996.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004995.covered FourierPilotCircleTree004996.covered
#print axioms covered
end FourierPilotCircleTree004994
