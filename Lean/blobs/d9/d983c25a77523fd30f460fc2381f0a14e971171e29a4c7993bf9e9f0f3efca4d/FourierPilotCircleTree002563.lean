import FourierPilotCircleTree002564
import FourierPilotCircleTree002565
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002563
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![9, 13, 10, 25, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002564.state FourierPilotCircleTree002565.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002564.covered FourierPilotCircleTree002565.covered
#print axioms covered
end FourierPilotCircleTree002563
