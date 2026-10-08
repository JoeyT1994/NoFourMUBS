import FourierPilotCircleTree000699
import FourierPilotCircleTree000720
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000698
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![3, 3, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000699.state FourierPilotCircleTree000720.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000699.covered FourierPilotCircleTree000720.covered
#print axioms covered
end FourierPilotCircleTree000698
