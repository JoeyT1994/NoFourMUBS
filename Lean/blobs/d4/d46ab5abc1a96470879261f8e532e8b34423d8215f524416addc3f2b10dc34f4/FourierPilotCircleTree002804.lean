import FourierPilotCircleTree002805
import FourierPilotCircleTree002806
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002804
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![24, 11, 8, 10, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002805.state FourierPilotCircleTree002806.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002805.covered FourierPilotCircleTree002806.covered
#print axioms covered
end FourierPilotCircleTree002804
