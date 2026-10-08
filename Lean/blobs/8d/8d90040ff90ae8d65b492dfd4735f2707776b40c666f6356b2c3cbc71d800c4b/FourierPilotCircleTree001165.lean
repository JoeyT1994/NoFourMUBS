import FourierPilotCircleTree001166
import FourierPilotCircleTree001171
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001165
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![18, 29, 31, 44, 50]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001166.state FourierPilotCircleTree001171.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001166.covered FourierPilotCircleTree001171.covered
#print axioms covered
end FourierPilotCircleTree001165
