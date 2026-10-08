import FourierPilotCircleTree005518
import FourierPilotCircleTree005519
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005517
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![7, 5, 6, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005518.state FourierPilotCircleTree005519.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005518.covered FourierPilotCircleTree005519.covered
#print axioms covered
end FourierPilotCircleTree005517
