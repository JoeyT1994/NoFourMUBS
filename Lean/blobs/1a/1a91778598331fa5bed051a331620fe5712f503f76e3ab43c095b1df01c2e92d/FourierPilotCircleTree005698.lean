import FourierPilotCircleTree005699
import FourierPilotCircleTree005700
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005698
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![114, 114, 63, 87, 87]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005699.state FourierPilotCircleTree005700.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005699.covered FourierPilotCircleTree005700.covered
#print axioms covered
end FourierPilotCircleTree005698
