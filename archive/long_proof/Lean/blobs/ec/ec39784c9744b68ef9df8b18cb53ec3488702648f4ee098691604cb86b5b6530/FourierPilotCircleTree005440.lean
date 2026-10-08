import FourierPilotCircleTree005441
import FourierPilotCircleTree005462
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005440
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![11, 7, 7, 7, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005441.state FourierPilotCircleTree005462.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005441.covered FourierPilotCircleTree005462.covered
#print axioms covered
end FourierPilotCircleTree005440
