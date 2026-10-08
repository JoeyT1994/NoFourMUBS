import FourierPilotCircleTree001824
import FourierPilotCircleTree001825
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001823
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![24, 19, 8, 15, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001824.state FourierPilotCircleTree001825.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001824.covered FourierPilotCircleTree001825.covered
#print axioms covered
end FourierPilotCircleTree001823
