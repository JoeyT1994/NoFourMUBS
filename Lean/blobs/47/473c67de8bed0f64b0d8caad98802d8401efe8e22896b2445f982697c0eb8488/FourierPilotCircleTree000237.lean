import FourierPilotCircleTree000238
import FourierPilotCircleTree000239
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000237
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![18, 27, 20, 50, 31]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000238.state FourierPilotCircleTree000239.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000238.covered FourierPilotCircleTree000239.covered
#print axioms covered
end FourierPilotCircleTree000237
