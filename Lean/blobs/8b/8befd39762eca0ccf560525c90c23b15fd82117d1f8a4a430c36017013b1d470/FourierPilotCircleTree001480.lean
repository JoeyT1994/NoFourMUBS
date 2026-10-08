import FourierPilotCircleTree001481
import FourierPilotCircleTree001494
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001480
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![20, 29, 27, 31, 44]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001481.state FourierPilotCircleTree001494.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001481.covered FourierPilotCircleTree001494.covered
#print axioms covered
end FourierPilotCircleTree001480
