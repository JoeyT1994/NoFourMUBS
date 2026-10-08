import FourierPilotCircleTree001027
import FourierPilotCircleTree001028
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001026
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![19, 19, 15, 26, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001027.state FourierPilotCircleTree001028.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001027.covered FourierPilotCircleTree001028.covered
#print axioms covered
end FourierPilotCircleTree001026
