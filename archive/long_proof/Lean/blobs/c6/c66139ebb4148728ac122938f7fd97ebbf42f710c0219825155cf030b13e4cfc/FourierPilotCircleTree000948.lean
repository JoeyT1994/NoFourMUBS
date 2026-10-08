import FourierPilotCircleTree000949
import FourierPilotCircleTree000950
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000948
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![25, 24, 27, 21, 17]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000949.state FourierPilotCircleTree000950.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000949.covered FourierPilotCircleTree000950.covered
#print axioms covered
end FourierPilotCircleTree000948
