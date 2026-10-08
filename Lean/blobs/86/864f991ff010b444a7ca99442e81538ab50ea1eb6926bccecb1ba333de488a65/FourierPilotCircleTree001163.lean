import FourierPilotCircleTree001164
import FourierPilotCircleTree001173
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001163
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![18, 29, 31, 22, 25]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001164.state FourierPilotCircleTree001173.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001164.covered FourierPilotCircleTree001173.covered
#print axioms covered
end FourierPilotCircleTree001163
