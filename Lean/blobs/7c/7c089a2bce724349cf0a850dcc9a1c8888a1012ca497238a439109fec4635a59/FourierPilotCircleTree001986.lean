import FourierPilotCircleTree001987
import FourierPilotCircleTree001996
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001986
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![2, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001987.state FourierPilotCircleTree001996.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001987.covered FourierPilotCircleTree001996.covered
#print axioms covered
end FourierPilotCircleTree001986
