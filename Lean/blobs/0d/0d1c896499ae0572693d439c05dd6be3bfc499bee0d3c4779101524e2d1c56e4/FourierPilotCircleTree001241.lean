import FourierPilotCircleTree001242
import FourierPilotCircleTree001243
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001241
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![80, 111, 63, 123, 68]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001242.state FourierPilotCircleTree001243.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001242.covered FourierPilotCircleTree001243.covered
#print axioms covered
end FourierPilotCircleTree001241
