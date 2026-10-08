import FourierPilotCircleTree004819
import FourierPilotCircleTree004824
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004818
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![49, 50, 55, 17, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004819.state FourierPilotCircleTree004824.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004819.covered FourierPilotCircleTree004824.covered
#print axioms covered
end FourierPilotCircleTree004818
