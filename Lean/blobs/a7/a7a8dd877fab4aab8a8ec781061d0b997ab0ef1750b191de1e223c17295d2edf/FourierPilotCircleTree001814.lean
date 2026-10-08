import FourierPilotCircleTree001815
import FourierPilotCircleTree001816
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001814
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![12, 4, 4, 7, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001815.state FourierPilotCircleTree001816.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001815.covered FourierPilotCircleTree001816.covered
#print axioms covered
end FourierPilotCircleTree001814
