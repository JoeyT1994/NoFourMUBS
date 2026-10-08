import FourierPilotCircleTree002252
import FourierPilotCircleTree002259
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002251
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![3, 3, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002252.state FourierPilotCircleTree002259.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002252.covered FourierPilotCircleTree002259.covered
#print axioms covered
end FourierPilotCircleTree002251
