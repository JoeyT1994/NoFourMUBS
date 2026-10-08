import FourierPilotCircleTree005004
import FourierPilotCircleTree005005
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005003
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![50, 49, 27, 21, 17]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005004.state FourierPilotCircleTree005005.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005004.covered FourierPilotCircleTree005005.covered
#print axioms covered
end FourierPilotCircleTree005003
