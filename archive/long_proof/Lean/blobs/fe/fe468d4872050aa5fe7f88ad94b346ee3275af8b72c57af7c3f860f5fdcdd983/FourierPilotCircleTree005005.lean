import FourierPilotCircleTree005006
import FourierPilotCircleTree005021
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005005
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![50, 49, 27, 43, 17]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005006.state FourierPilotCircleTree005021.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005006.covered FourierPilotCircleTree005021.covered
#print axioms covered
end FourierPilotCircleTree005005
