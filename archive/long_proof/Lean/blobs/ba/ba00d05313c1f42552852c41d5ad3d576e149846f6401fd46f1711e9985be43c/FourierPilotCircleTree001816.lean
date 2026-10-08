import FourierPilotCircleTree001817
import FourierPilotCircleTree001828
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001816
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![12, 9, 4, 7, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001817.state FourierPilotCircleTree001828.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001817.covered FourierPilotCircleTree001828.covered
#print axioms covered
end FourierPilotCircleTree001816
