import FourierPilotCircleTree004989
import FourierPilotCircleTree005030
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004988
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![12, 12, 13, 10, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004989.state FourierPilotCircleTree005030.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004989.covered FourierPilotCircleTree005030.covered
#print axioms covered
end FourierPilotCircleTree004988
