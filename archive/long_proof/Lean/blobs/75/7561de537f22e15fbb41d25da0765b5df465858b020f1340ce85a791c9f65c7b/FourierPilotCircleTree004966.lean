import FourierPilotCircleTree004967
import FourierPilotCircleTree004970
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004966
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![12, 7, 4, 7, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004967.state FourierPilotCircleTree004970.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004967.covered FourierPilotCircleTree004970.covered
#print axioms covered
end FourierPilotCircleTree004966
