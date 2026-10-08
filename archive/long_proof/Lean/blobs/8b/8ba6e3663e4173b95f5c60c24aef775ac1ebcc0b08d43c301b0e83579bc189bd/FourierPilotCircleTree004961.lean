import FourierPilotCircleTree004962
import FourierPilotCircleTree004963
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004961
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![6, 7, 4, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004962.state FourierPilotCircleTree004963.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004962.covered FourierPilotCircleTree004963.covered
#print axioms covered
end FourierPilotCircleTree004961
