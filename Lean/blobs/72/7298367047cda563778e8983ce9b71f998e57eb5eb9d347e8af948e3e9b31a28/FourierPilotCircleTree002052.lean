import FourierPilotCircleTree002053
import FourierPilotCircleTree002054
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002052
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![10, 6, 4, 7, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002053.state FourierPilotCircleTree002054.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002053.covered FourierPilotCircleTree002054.covered
#print axioms covered
end FourierPilotCircleTree002052
