import FourierPilotCircleTree000951
import FourierPilotCircleTree000976
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000950
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![25, 49, 27, 21, 17]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000951.state FourierPilotCircleTree000976.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000951.covered FourierPilotCircleTree000976.covered
#print axioms covered
end FourierPilotCircleTree000950
