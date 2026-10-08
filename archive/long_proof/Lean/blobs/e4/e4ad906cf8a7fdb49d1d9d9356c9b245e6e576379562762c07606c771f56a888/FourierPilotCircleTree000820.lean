import FourierPilotCircleTree000821
import FourierPilotCircleTree000822
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000820
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![11, 11, 10, 13, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000821.state FourierPilotCircleTree000822.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000821.covered FourierPilotCircleTree000822.covered
#print axioms covered
end FourierPilotCircleTree000820
