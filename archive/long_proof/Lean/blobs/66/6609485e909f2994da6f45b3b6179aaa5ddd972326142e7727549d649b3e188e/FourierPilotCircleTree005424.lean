import FourierPilotCircleTree005425
import FourierPilotCircleTree005464
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005424
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![2, 3, 3, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005425.state FourierPilotCircleTree005464.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005425.covered FourierPilotCircleTree005464.covered
#print axioms covered
end FourierPilotCircleTree005424
