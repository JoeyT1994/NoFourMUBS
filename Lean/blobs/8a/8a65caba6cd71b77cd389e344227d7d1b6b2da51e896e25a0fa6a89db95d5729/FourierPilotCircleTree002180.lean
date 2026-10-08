import FourierPilotCircleTree002181
import FourierPilotCircleTree002198
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002180
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![55, 40, 31, 17, 30]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002181.state FourierPilotCircleTree002198.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002181.covered FourierPilotCircleTree002198.covered
#print axioms covered
end FourierPilotCircleTree002180
