import FourierPilotCircleTree004378
import FourierPilotCircleTree004379
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004377
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![55, 35, 41, 42, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004378.state FourierPilotCircleTree004379.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004378.covered FourierPilotCircleTree004379.covered
#print axioms covered
end FourierPilotCircleTree004377
