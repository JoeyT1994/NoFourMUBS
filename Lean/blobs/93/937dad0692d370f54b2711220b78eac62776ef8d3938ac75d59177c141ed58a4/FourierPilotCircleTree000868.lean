import FourierPilotCircleTree000869
import FourierPilotCircleTree000870
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000868
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![2, 2, 3, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000869.state FourierPilotCircleTree000870.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000869.covered FourierPilotCircleTree000870.covered
#print axioms covered
end FourierPilotCircleTree000868
