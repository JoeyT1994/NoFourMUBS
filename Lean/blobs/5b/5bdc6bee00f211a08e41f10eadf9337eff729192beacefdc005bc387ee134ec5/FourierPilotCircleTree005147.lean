import FourierPilotCircleTree005148
import FourierPilotCircleTree005149
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005147
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![57, 57, 32, 87, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005148.state FourierPilotCircleTree005149.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005148.covered FourierPilotCircleTree005149.covered
#print axioms covered
end FourierPilotCircleTree005147
