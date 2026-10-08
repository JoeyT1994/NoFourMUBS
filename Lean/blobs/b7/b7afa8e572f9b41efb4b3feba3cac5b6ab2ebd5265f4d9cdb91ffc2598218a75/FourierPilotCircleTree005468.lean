import FourierPilotCircleTree005469
import FourierPilotCircleTree005470
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005468
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![3, 2, 2, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005469.state FourierPilotCircleTree005470.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005469.covered FourierPilotCircleTree005470.covered
#print axioms covered
end FourierPilotCircleTree005468
