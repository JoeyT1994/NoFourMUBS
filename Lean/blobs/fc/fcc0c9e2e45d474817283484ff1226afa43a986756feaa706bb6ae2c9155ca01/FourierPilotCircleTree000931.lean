import FourierPilotCircleTree000932
import FourierPilotCircleTree000987
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000931
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![6, 6, 6, 5, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000932.state FourierPilotCircleTree000987.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000932.covered FourierPilotCircleTree000987.covered
#print axioms covered
end FourierPilotCircleTree000931
