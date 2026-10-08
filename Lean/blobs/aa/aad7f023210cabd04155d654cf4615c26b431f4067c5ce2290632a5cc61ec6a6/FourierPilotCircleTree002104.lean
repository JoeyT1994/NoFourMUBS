import FourierPilotCircleTree002105
import FourierPilotCircleTree002114
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002104
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![10, 14, 4, 7, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002105.state FourierPilotCircleTree002114.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002105.covered FourierPilotCircleTree002114.covered
#print axioms covered
end FourierPilotCircleTree002104
