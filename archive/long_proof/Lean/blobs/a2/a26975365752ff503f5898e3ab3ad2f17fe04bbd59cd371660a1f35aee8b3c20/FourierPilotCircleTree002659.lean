import FourierPilotCircleTree002660
import FourierPilotCircleTree002661
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002659
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![6, 3, 2, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002660.state FourierPilotCircleTree002661.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002660.covered FourierPilotCircleTree002661.covered
#print axioms covered
end FourierPilotCircleTree002659
