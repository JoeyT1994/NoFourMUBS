import FourierPilotCircleTree004250
import FourierPilotCircleTree004251
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004249
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![11, 14, 7, 4, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004250.state FourierPilotCircleTree004251.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004250.covered FourierPilotCircleTree004251.covered
#print axioms covered
end FourierPilotCircleTree004249
