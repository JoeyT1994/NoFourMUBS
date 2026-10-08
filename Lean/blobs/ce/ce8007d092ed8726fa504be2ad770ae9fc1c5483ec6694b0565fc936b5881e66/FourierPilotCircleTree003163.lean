import FourierPilotCircleTree003164
import FourierPilotCircleTree003165
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003163
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![8, 27, 20, 21, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003164.state FourierPilotCircleTree003165.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003164.covered FourierPilotCircleTree003165.covered
#print axioms covered
end FourierPilotCircleTree003163
