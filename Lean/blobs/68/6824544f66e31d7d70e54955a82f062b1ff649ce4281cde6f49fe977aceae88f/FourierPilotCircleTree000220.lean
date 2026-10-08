import FourierPilotCircleTree000221
import FourierPilotCircleTree000222
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000220
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![4, 6, 5, 6, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000221.state FourierPilotCircleTree000222.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000221.covered FourierPilotCircleTree000222.covered
#print axioms covered
end FourierPilotCircleTree000220
