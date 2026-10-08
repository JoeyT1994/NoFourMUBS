import FourierPilotCircleTree001364
import FourierPilotCircleTree001365
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001363
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![29, 18, 16, 51, 45]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001364.state FourierPilotCircleTree001365.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001364.covered FourierPilotCircleTree001365.covered
#print axioms covered
end FourierPilotCircleTree001363
