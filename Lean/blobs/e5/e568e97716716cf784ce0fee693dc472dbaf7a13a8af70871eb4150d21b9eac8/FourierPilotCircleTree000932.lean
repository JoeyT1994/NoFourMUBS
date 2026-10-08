import FourierPilotCircleTree000933
import FourierPilotCircleTree000986
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000932
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![12, 6, 6, 5, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000933.state FourierPilotCircleTree000986.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000933.covered FourierPilotCircleTree000986.covered
#print axioms covered
end FourierPilotCircleTree000932
