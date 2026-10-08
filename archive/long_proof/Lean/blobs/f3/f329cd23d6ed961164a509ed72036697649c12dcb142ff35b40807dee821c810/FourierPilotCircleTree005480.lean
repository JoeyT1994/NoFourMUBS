import FourierPilotCircleTree005481
import FourierPilotCircleTree005500
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005480
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![12, 9, 4, 4, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005481.state FourierPilotCircleTree005500.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005481.covered FourierPilotCircleTree005500.covered
#print axioms covered
end FourierPilotCircleTree005480
