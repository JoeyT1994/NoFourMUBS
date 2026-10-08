import FourierPilotCircleTree002021
import FourierPilotCircleTree002034
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002020
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![18, 29, 8, 22, 25]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002021.state FourierPilotCircleTree002034.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002021.covered FourierPilotCircleTree002034.covered
#print axioms covered
end FourierPilotCircleTree002020
