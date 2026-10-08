import FourierPilotCircleTree002447
import FourierPilotCircleTree002466
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002446
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![30, 20, 27, 52, 53]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002447.state FourierPilotCircleTree002466.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002447.covered FourierPilotCircleTree002466.covered
#print axioms covered
end FourierPilotCircleTree002446
