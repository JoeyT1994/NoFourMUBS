import FourierPilotCircleTree004876
import FourierPilotCircleTree004877
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004875
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![22, 11, 10, 13, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004876.state FourierPilotCircleTree004877.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004876.covered FourierPilotCircleTree004877.covered
#print axioms covered
end FourierPilotCircleTree004875
