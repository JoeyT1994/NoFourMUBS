import FourierPilotCircleTree002311
import FourierPilotCircleTree002318
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002310
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![35, 55, 41, 87, 42]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002311.state FourierPilotCircleTree002318.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002311.covered FourierPilotCircleTree002318.covered
#print axioms covered
end FourierPilotCircleTree002310
