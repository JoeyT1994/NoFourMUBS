import FourierPilotCircleTree003819
import FourierPilotCircleTree003862
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003818
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![5, 6, 7, 7, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003819.state FourierPilotCircleTree003862.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003819.covered FourierPilotCircleTree003862.covered
#print axioms covered
end FourierPilotCircleTree003818
