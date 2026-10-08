import FourierPilotCircleTree000233
import FourierPilotCircleTree000244
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000232
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![9, 27, 10, 25, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000233.state FourierPilotCircleTree000244.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000233.covered FourierPilotCircleTree000244.covered
#print axioms covered
end FourierPilotCircleTree000232
