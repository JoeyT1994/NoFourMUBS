import FourierPilotCircleTree004309
import FourierPilotCircleTree004322
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004308
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![40, 30, 27, 53, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004309.state FourierPilotCircleTree004322.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004309.covered FourierPilotCircleTree004322.covered
#print axioms covered
end FourierPilotCircleTree004308
