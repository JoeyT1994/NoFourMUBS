import FourierPilotCircleTree004801
import FourierPilotCircleTree004802
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004800
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![49, 50, 27, 17, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004801.state FourierPilotCircleTree004802.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004801.covered FourierPilotCircleTree004802.covered
#print axioms covered
end FourierPilotCircleTree004800
