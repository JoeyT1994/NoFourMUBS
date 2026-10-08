import FourierPilotCircleTree001755
import FourierPilotCircleTree001756
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001754
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![27, 8, 20, 21, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001755.state FourierPilotCircleTree001756.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001755.covered FourierPilotCircleTree001756.covered
#print axioms covered
end FourierPilotCircleTree001754
