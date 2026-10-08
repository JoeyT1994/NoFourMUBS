import FourierPilotCircleTree002104
import FourierPilotCircleTree002115
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002103
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![10, 7, 4, 7, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002104.state FourierPilotCircleTree002115.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002104.covered FourierPilotCircleTree002115.covered
#print axioms covered
end FourierPilotCircleTree002103
