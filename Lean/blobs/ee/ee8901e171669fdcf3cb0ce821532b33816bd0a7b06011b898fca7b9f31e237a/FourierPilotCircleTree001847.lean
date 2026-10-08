import FourierPilotCircleTree001848
import FourierPilotCircleTree001849
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001847
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![2, 2, 3, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001848.state FourierPilotCircleTree001849.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001848.covered FourierPilotCircleTree001849.covered
#print axioms covered
end FourierPilotCircleTree001847
