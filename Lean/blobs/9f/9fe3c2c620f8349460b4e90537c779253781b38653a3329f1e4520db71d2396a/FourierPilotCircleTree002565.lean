import FourierPilotCircleTree002566
import FourierPilotCircleTree002587
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002565
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![9, 27, 10, 25, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002566.state FourierPilotCircleTree002587.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002566.covered FourierPilotCircleTree002587.covered
#print axioms covered
end FourierPilotCircleTree002565
