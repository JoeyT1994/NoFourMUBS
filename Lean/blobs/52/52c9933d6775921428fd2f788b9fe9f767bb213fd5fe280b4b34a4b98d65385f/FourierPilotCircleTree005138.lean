import FourierPilotCircleTree005139
import FourierPilotCircleTree005140
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005138
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![28, 28, 16, 43, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005139.state FourierPilotCircleTree005140.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005139.covered FourierPilotCircleTree005140.covered
#print axioms covered
end FourierPilotCircleTree005138
