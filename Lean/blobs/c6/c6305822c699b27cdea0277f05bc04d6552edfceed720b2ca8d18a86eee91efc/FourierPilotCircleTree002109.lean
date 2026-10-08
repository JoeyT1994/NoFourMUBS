import FourierPilotCircleTree002110
import FourierPilotCircleTree002111
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002109
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![20, 14, 8, 15, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002110.state FourierPilotCircleTree002111.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002110.covered FourierPilotCircleTree002111.covered
#print axioms covered
end FourierPilotCircleTree002109
