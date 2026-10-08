import FourierPilotCircleTree000364
import FourierPilotCircleTree000365
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000363
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![29, 20, 27, 44, 16]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000364.state FourierPilotCircleTree000365.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000364.covered FourierPilotCircleTree000365.covered
#print axioms covered
end FourierPilotCircleTree000363
