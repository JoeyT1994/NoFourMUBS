import FourierPilotCircleTree001193
import FourierPilotCircleTree001194
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001192
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![9, 13, 7, 7, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001193.state FourierPilotCircleTree001194.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001193.covered FourierPilotCircleTree001194.covered
#print axioms covered
end FourierPilotCircleTree001192
