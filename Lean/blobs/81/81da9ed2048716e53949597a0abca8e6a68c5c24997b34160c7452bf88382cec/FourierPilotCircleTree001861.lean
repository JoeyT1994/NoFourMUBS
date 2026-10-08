import FourierPilotCircleTree001862
import FourierPilotCircleTree001911
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001861
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![5, 3, 2, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001862.state FourierPilotCircleTree001911.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001862.covered FourierPilotCircleTree001911.covered
#print axioms covered
end FourierPilotCircleTree001861
