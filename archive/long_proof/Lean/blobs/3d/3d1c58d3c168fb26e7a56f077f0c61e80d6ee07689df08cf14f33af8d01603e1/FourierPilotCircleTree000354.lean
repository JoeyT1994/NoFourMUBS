import FourierPilotCircleTree000355
import FourierPilotCircleTree000372
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000354
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![14, 10, 13, 11, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000355.state FourierPilotCircleTree000372.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000355.covered FourierPilotCircleTree000372.covered
#print axioms covered
end FourierPilotCircleTree000354
