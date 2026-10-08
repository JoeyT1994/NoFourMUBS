import FourierPilotCircleTree003929
import FourierPilotCircleTree003942
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003928
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![7, 5, 4, 4, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003929.state FourierPilotCircleTree003942.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003929.covered FourierPilotCircleTree003942.covered
#print axioms covered
end FourierPilotCircleTree003928
