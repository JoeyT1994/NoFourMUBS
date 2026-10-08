import FourierPilotCircleTree004121
import FourierPilotCircleTree004164
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004120
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![6, 2, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004121.state FourierPilotCircleTree004164.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004121.covered FourierPilotCircleTree004164.covered
#print axioms covered
end FourierPilotCircleTree004120
