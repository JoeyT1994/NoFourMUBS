import FourierPilotCircleTree001702
import FourierPilotCircleTree001713
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001701
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![40, 30, 54, 53, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001702.state FourierPilotCircleTree001713.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001702.covered FourierPilotCircleTree001713.covered
#print axioms covered
end FourierPilotCircleTree001701
