import FourierPilotCircleTree001359
import FourierPilotCircleTree001370
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001358
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![29, 18, 8, 25, 22]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001359.state FourierPilotCircleTree001370.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001359.covered FourierPilotCircleTree001370.covered
#print axioms covered
end FourierPilotCircleTree001358
