import FourierPilotCircleTree000929
import FourierPilotCircleTree000930
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000928
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![6, 6, 6, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000929.state FourierPilotCircleTree000930.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000929.covered FourierPilotCircleTree000930.covered
#print axioms covered
end FourierPilotCircleTree000928
