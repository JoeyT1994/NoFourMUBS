import FourierPilotCircleTree003841
import FourierPilotCircleTree003856
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003840
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![40, 55, 31, 61, 17]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003841.state FourierPilotCircleTree003856.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003841.covered FourierPilotCircleTree003856.covered
#print axioms covered
end FourierPilotCircleTree003840
