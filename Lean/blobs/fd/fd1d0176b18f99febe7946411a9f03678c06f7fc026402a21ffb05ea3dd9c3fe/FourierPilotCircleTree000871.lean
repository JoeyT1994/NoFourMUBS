import FourierPilotCircleTree000872
import FourierPilotCircleTree000873
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000871
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![5, 4, 3, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000872.state FourierPilotCircleTree000873.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000872.covered FourierPilotCircleTree000873.covered
#print axioms covered
end FourierPilotCircleTree000871
