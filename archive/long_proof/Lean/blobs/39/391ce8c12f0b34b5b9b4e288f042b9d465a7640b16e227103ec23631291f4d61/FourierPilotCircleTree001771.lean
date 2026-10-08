import FourierPilotCircleTree001772
import FourierPilotCircleTree001779
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001771
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![55, 35, 41, 42, 87]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001772.state FourierPilotCircleTree001779.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001772.covered FourierPilotCircleTree001779.covered
#print axioms covered
end FourierPilotCircleTree001771
