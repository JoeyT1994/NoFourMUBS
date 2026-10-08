import FourierPilotCircleTree002010
import FourierPilotCircleTree002039
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002009
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![4, 7, 4, 11, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002010.state FourierPilotCircleTree002039.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002010.covered FourierPilotCircleTree002039.covered
#print axioms covered
end FourierPilotCircleTree002009
