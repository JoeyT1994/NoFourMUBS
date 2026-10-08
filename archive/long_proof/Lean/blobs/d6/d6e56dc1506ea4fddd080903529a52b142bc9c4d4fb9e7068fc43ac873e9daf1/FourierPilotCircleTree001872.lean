import FourierPilotCircleTree001873
import FourierPilotCircleTree001906
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001872
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![11, 12, 4, 13, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001873.state FourierPilotCircleTree001906.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001873.covered FourierPilotCircleTree001906.covered
#print axioms covered
end FourierPilotCircleTree001872
