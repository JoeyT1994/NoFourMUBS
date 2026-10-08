import FourierPilotCircleTree002150
import FourierPilotCircleTree002151
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002149
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![27, 9, 15, 8, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002150.state FourierPilotCircleTree002151.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002150.covered FourierPilotCircleTree002151.covered
#print axioms covered
end FourierPilotCircleTree002149
