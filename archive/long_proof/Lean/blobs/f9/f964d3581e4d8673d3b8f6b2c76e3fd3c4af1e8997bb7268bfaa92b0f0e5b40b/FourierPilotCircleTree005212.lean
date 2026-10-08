import FourierPilotCircleTree005213
import FourierPilotCircleTree005216
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005212
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![19, 48, 16, 26, 16]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005213.state FourierPilotCircleTree005216.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005213.covered FourierPilotCircleTree005216.covered
#print axioms covered
end FourierPilotCircleTree005212
