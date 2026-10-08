import FourierPilotCircleTree004239
import FourierPilotCircleTree004240
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004238
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![5, 3, 3, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004239.state FourierPilotCircleTree004240.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004239.covered FourierPilotCircleTree004240.covered
#print axioms covered
end FourierPilotCircleTree004238
