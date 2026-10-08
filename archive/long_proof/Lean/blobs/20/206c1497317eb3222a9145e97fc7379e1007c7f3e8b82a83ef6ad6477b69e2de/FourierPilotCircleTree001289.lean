import FourierPilotCircleTree001290
import FourierPilotCircleTree001303
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001289
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![55, 40, 16, 34, 61]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001290.state FourierPilotCircleTree001303.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001290.covered FourierPilotCircleTree001303.covered
#print axioms covered
end FourierPilotCircleTree001289
