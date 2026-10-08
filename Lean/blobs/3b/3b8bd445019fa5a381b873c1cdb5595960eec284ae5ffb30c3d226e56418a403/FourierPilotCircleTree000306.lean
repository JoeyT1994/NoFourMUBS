import FourierPilotCircleTree000307
import FourierPilotCircleTree000308
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000306
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![12, 4, 4, 4, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000307.state FourierPilotCircleTree000308.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000307.covered FourierPilotCircleTree000308.covered
#print axioms covered
end FourierPilotCircleTree000306
