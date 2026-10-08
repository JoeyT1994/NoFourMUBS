import FourierPilotCircleTree004983
import FourierPilotCircleTree005040
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004982
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![6, 6, 6, 5, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004983.state FourierPilotCircleTree005040.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004983.covered FourierPilotCircleTree005040.covered
#print axioms covered
end FourierPilotCircleTree004982
