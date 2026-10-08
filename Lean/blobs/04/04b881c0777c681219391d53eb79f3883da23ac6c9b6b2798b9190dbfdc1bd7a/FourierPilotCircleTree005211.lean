import FourierPilotCircleTree005212
import FourierPilotCircleTree005217
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005211
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![19, 24, 16, 26, 16]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005212.state FourierPilotCircleTree005217.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005212.covered FourierPilotCircleTree005217.covered
#print axioms covered
end FourierPilotCircleTree005211
