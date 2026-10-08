import FourierPilotCircleTree002255
import FourierPilotCircleTree002256
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002254
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![3, 3, 2, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002255.state FourierPilotCircleTree002256.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002255.covered FourierPilotCircleTree002256.covered
#print axioms covered
end FourierPilotCircleTree002254
