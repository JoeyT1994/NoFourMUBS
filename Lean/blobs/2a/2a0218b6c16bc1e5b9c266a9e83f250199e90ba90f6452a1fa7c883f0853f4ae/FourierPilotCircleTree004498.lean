import FourierPilotCircleTree004499
import FourierPilotCircleTree004500
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004498
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![93, 98, 32, 53, 42]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004499.state FourierPilotCircleTree004500.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004499.covered FourierPilotCircleTree004500.covered
#print axioms covered
end FourierPilotCircleTree004498
