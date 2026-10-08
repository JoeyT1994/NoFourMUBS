import FourierPilotCircleTree000849
import FourierPilotCircleTree000850
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000848
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![91, 93, 82, 104, 61]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000849.state FourierPilotCircleTree000850.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000849.covered FourierPilotCircleTree000850.covered
#print axioms covered
end FourierPilotCircleTree000848
