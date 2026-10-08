import FourierPilotCircleTree004323
import FourierPilotCircleTree004326
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004322
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![40, 30, 55, 53, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004323.state FourierPilotCircleTree004326.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004323.covered FourierPilotCircleTree004326.covered
#print axioms covered
end FourierPilotCircleTree004322
