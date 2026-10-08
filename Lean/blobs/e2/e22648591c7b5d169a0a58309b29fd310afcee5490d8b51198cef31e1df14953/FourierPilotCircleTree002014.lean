import FourierPilotCircleTree002015
import FourierPilotCircleTree002036
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002014
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![9, 14, 8, 11, 12]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002015.state FourierPilotCircleTree002036.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002015.covered FourierPilotCircleTree002036.covered
#print axioms covered
end FourierPilotCircleTree002014
