import FourierPilotCircleTree005023
import FourierPilotCircleTree005026
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005022
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![50, 49, 55, 43, 34]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005023.state FourierPilotCircleTree005026.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005023.covered FourierPilotCircleTree005026.covered
#print axioms covered
end FourierPilotCircleTree005022
