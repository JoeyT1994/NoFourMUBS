import FourierPilotCircleTree000363
import FourierPilotCircleTree000366
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000362
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![29, 20, 27, 22, 16]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000363.state FourierPilotCircleTree000366.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000363.covered FourierPilotCircleTree000366.covered
#print axioms covered
end FourierPilotCircleTree000362
