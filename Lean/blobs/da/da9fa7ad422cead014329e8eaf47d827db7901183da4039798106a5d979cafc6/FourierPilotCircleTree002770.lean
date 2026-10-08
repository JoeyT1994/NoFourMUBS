import FourierPilotCircleTree002771
import FourierPilotCircleTree002772
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002770
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![93, 98, 127, 107, 84]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002771.state FourierPilotCircleTree002772.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002771.covered FourierPilotCircleTree002772.covered
#print axioms covered
end FourierPilotCircleTree002770
