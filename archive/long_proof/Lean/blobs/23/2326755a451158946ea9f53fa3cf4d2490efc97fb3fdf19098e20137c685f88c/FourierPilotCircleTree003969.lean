import FourierPilotCircleTree003970
import FourierPilotCircleTree003971
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003969
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![29, 18, 16, 51, 22]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003970.state FourierPilotCircleTree003971.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003970.covered FourierPilotCircleTree003971.covered
#print axioms covered
end FourierPilotCircleTree003969
