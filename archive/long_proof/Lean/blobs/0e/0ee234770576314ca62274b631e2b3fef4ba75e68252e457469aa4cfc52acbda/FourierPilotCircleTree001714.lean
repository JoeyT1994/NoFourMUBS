import FourierPilotCircleTree001715
import FourierPilotCircleTree001718
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001714
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![40, 30, 55, 53, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001715.state FourierPilotCircleTree001718.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001715.covered FourierPilotCircleTree001718.covered
#print axioms covered
end FourierPilotCircleTree001714
