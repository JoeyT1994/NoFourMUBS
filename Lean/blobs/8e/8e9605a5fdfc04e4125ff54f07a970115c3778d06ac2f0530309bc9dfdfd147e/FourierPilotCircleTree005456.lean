import FourierPilotCircleTree005457
import FourierPilotCircleTree005458
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005456
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![47, 28, 31, 31, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005457.state FourierPilotCircleTree005458.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005457.covered FourierPilotCircleTree005458.covered
#print axioms covered
end FourierPilotCircleTree005456
