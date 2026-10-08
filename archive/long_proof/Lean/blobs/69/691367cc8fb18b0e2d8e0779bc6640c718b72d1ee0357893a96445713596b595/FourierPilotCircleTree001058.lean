import FourierPilotCircleTree001059
import FourierPilotCircleTree001060
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001058
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![3, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001059.state FourierPilotCircleTree001060.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001059.covered FourierPilotCircleTree001060.covered
#print axioms covered
end FourierPilotCircleTree001058
