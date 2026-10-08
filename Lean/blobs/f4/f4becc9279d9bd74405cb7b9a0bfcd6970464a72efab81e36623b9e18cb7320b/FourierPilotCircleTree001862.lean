import FourierPilotCircleTree001863
import FourierPilotCircleTree001910
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001862
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![5, 6, 2, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001863.state FourierPilotCircleTree001910.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001863.covered FourierPilotCircleTree001910.covered
#print axioms covered
end FourierPilotCircleTree001862
