import FourierPilotCircleTree001696
import FourierPilotCircleTree001721
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001695
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![20, 15, 27, 26, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001696.state FourierPilotCircleTree001721.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001696.covered FourierPilotCircleTree001721.covered
#print axioms covered
end FourierPilotCircleTree001695
