import FourierPilotCircleTree000816
import FourierPilotCircleTree000819
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000815
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![11, 11, 10, 12, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000816.state FourierPilotCircleTree000819.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000816.covered FourierPilotCircleTree000819.covered
#print axioms covered
end FourierPilotCircleTree000815
