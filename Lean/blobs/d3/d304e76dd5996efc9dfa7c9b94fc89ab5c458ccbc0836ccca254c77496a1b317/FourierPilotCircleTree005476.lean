import FourierPilotCircleTree005477
import FourierPilotCircleTree005478
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005476
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![12, 4, 4, 4, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005477.state FourierPilotCircleTree005478.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005477.covered FourierPilotCircleTree005478.covered
#print axioms covered
end FourierPilotCircleTree005476
