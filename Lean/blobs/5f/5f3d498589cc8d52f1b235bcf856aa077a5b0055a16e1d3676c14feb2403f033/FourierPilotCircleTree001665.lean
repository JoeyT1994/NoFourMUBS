import FourierPilotCircleTree001666
import FourierPilotCircleTree001673
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001665
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![4, 7, 6, 6, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001666.state FourierPilotCircleTree001673.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001666.covered FourierPilotCircleTree001673.covered
#print axioms covered
end FourierPilotCircleTree001665
