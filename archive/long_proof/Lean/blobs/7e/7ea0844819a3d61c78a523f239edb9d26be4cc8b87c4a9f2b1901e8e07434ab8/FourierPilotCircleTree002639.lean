import FourierPilotCircleTree002640
import FourierPilotCircleTree002641
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002639
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![117, 41, 54, 89, 63]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002640.state FourierPilotCircleTree002641.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002640.covered FourierPilotCircleTree002641.covered
#print axioms covered
end FourierPilotCircleTree002639
