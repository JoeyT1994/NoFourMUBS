import FourierPilotCircleTree003872
import FourierPilotCircleTree003873
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003871
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![6, 2, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003872.state FourierPilotCircleTree003873.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003872.covered FourierPilotCircleTree003873.covered
#print axioms covered
end FourierPilotCircleTree003871
