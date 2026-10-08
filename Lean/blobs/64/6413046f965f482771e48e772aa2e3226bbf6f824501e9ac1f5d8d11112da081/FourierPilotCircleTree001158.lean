import FourierPilotCircleTree001159
import FourierPilotCircleTree001174
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001158
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![9, 14, 15, 22, 25]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001159.state FourierPilotCircleTree001174.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001159.covered FourierPilotCircleTree001174.covered
#print axioms covered
end FourierPilotCircleTree001158
