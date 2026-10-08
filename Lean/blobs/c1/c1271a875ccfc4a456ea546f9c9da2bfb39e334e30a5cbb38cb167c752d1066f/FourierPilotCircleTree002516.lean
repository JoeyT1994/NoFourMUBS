import FourierPilotCircleTree002517
import FourierPilotCircleTree002518
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002516
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![23, 19, 15, 15, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002517.state FourierPilotCircleTree002518.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002517.covered FourierPilotCircleTree002518.covered
#print axioms covered
end FourierPilotCircleTree002516
