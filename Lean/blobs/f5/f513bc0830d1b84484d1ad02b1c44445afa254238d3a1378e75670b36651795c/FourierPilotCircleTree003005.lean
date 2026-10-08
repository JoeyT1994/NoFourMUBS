import FourierPilotCircleTree003006
import FourierPilotCircleTree003007
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003005
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![6, 4, 3, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003006.state FourierPilotCircleTree003007.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003006.covered FourierPilotCircleTree003007.covered
#print axioms covered
end FourierPilotCircleTree003005
