import FourierPilotCircleTree002011
import FourierPilotCircleTree002012
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002010
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![4, 7, 4, 11, 12]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002011.state FourierPilotCircleTree002012.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002011.covered FourierPilotCircleTree002012.covered
#print axioms covered
end FourierPilotCircleTree002010
