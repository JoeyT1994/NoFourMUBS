import FourierPilotCircleTree004642
import FourierPilotCircleTree004735
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004641
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![2, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004642.state FourierPilotCircleTree004735.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004642.covered FourierPilotCircleTree004735.covered
#print axioms covered
end FourierPilotCircleTree004641
