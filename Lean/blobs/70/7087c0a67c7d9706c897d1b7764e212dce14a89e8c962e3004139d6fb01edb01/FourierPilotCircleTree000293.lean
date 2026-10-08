import FourierPilotCircleTree000294
import FourierPilotCircleTree000379
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000293
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![3, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000294.state FourierPilotCircleTree000379.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000294.covered FourierPilotCircleTree000379.covered
#print axioms covered
end FourierPilotCircleTree000293
