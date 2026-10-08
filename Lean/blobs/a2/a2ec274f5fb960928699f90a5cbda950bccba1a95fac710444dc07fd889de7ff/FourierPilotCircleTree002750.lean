import FourierPilotCircleTree002751
import FourierPilotCircleTree002752
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002750
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![23, 24, 15, 26, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002751.state FourierPilotCircleTree002752.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002751.covered FourierPilotCircleTree002752.covered
#print axioms covered
end FourierPilotCircleTree002750
