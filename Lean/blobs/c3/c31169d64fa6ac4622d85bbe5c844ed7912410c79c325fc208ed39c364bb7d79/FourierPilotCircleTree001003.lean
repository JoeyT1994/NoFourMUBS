import FourierPilotCircleTree001004
import FourierPilotCircleTree001055
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001003
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![4, 2, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001004.state FourierPilotCircleTree001055.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001004.covered FourierPilotCircleTree001055.covered
#print axioms covered
end FourierPilotCircleTree001003
