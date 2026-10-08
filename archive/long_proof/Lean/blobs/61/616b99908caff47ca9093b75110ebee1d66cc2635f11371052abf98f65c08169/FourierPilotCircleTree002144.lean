import FourierPilotCircleTree002145
import FourierPilotCircleTree002152
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002144
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![13, 9, 15, 4, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002145.state FourierPilotCircleTree002152.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002145.covered FourierPilotCircleTree002152.covered
#print axioms covered
end FourierPilotCircleTree002144
