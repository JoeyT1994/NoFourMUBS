import FourierPilotCircleTree000941
import FourierPilotCircleTree000942
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000940
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![25, 24, 13, 10, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000941.state FourierPilotCircleTree000942.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000941.covered FourierPilotCircleTree000942.covered
#print axioms covered
end FourierPilotCircleTree000940
