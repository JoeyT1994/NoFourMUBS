import FourierPilotCircleTree000040
import FourierPilotCircleTree000045
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000039
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![19, 24, 16, 26, 16]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000040.state FourierPilotCircleTree000045.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000040.covered FourierPilotCircleTree000045.covered
#print axioms covered
end FourierPilotCircleTree000039
