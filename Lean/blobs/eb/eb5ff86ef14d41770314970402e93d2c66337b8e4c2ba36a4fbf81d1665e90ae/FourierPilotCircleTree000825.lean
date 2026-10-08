import FourierPilotCircleTree000826
import FourierPilotCircleTree000861
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000825
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![22, 23, 10, 13, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000826.state FourierPilotCircleTree000861.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000826.covered FourierPilotCircleTree000861.covered
#print axioms covered
end FourierPilotCircleTree000825
