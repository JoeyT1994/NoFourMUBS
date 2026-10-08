import FourierPilotCircleTree001852
import FourierPilotCircleTree001853
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001851
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![5, 2, 3, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001852.state FourierPilotCircleTree001853.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001852.covered FourierPilotCircleTree001853.covered
#print axioms covered
end FourierPilotCircleTree001851
