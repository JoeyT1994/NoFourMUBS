import FourierPilotCircleTree002737
import FourierPilotCircleTree002738
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002736
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![5, 6, 7, 6, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002737.state FourierPilotCircleTree002738.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002737.covered FourierPilotCircleTree002738.covered
#print axioms covered
end FourierPilotCircleTree002736
