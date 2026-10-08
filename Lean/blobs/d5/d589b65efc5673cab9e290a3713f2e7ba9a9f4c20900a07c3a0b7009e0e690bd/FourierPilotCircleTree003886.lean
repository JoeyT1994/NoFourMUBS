import FourierPilotCircleTree003887
import FourierPilotCircleTree003916
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003886
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![27, 10, 8, 8, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003887.state FourierPilotCircleTree003916.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003887.covered FourierPilotCircleTree003916.covered
#print axioms covered
end FourierPilotCircleTree003886
