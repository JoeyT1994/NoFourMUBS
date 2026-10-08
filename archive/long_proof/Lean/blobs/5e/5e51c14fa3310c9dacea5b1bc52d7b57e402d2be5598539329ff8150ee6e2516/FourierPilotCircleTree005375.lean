import FourierPilotCircleTree005376
import FourierPilotCircleTree005377
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005375
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![2, 2, 2, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005376.state FourierPilotCircleTree005377.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005376.covered FourierPilotCircleTree005377.covered
#print axioms covered
end FourierPilotCircleTree005375
