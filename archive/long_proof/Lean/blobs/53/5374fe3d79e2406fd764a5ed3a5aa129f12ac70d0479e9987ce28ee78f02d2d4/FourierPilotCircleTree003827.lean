import FourierPilotCircleTree003828
import FourierPilotCircleTree003859
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003827
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![10, 13, 15, 15, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003828.state FourierPilotCircleTree003859.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003828.covered FourierPilotCircleTree003859.covered
#print axioms covered
end FourierPilotCircleTree003827
