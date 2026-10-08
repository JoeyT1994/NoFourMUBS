import FourierPilotCircleTree005350
import FourierPilotCircleTree005351
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005349
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![28, 23, 15, 21, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005350.state FourierPilotCircleTree005351.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005350.covered FourierPilotCircleTree005351.covered
#print axioms covered
end FourierPilotCircleTree005349
