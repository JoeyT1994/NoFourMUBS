import FourierPilotCircleTree001940
import FourierPilotCircleTree001941
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001939
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![24, 23, 15, 10, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001940.state FourierPilotCircleTree001941.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001940.covered FourierPilotCircleTree001941.covered
#print axioms covered
end FourierPilotCircleTree001939
