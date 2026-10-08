import FourierPilotCircleTree004881
import FourierPilotCircleTree004908
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004880
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![22, 23, 20, 26, 30]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004881.state FourierPilotCircleTree004908.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004881.covered FourierPilotCircleTree004908.covered
#print axioms covered
end FourierPilotCircleTree004880
