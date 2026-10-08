import FourierPilotCircleTree002744
import FourierPilotCircleTree002779
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002743
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![11, 12, 7, 13, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002744.state FourierPilotCircleTree002779.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002744.covered FourierPilotCircleTree002779.covered
#print axioms covered
end FourierPilotCircleTree002743
