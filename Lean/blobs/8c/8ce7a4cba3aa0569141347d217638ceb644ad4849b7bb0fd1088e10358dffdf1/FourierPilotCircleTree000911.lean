import FourierPilotCircleTree000912
import FourierPilotCircleTree000913
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000911
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![6, 7, 4, 7, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000912.state FourierPilotCircleTree000913.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000912.covered FourierPilotCircleTree000913.covered
#print axioms covered
end FourierPilotCircleTree000911
