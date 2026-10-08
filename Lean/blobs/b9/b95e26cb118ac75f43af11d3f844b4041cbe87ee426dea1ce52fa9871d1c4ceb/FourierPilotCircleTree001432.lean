import FourierPilotCircleTree001433
import FourierPilotCircleTree001444
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001432
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![19, 47, 31, 52, 31]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001433.state FourierPilotCircleTree001444.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001433.covered FourierPilotCircleTree001444.covered
#print axioms covered
end FourierPilotCircleTree001432
