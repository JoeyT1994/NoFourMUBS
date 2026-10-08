import FourierPilotCircleTree000362
import FourierPilotCircleTree000369
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000361
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![29, 20, 27, 22, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000362.state FourierPilotCircleTree000369.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000362.covered FourierPilotCircleTree000369.covered
#print axioms covered
end FourierPilotCircleTree000361
