import FourierPilotCircleTree005648
import FourierPilotCircleTree005711
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005647
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![3, 3, 3, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005648.state FourierPilotCircleTree005711.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005648.covered FourierPilotCircleTree005711.covered
#print axioms covered
end FourierPilotCircleTree005647
