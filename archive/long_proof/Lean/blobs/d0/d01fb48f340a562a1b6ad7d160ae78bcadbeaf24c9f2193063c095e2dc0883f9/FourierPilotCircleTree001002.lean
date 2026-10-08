import FourierPilotCircleTree001003
import FourierPilotCircleTree001056
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001002
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![2, 2, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001003.state FourierPilotCircleTree001056.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001003.covered FourierPilotCircleTree001056.covered
#print axioms covered
end FourierPilotCircleTree001002
