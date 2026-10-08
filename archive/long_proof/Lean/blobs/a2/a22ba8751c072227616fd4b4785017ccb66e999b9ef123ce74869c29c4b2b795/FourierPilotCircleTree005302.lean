import FourierPilotCircleTree005303
import FourierPilotCircleTree005312
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005302
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![27, 9, 20, 15, 25]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005303.state FourierPilotCircleTree005312.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005303.covered FourierPilotCircleTree005312.covered
#print axioms covered
end FourierPilotCircleTree005302
