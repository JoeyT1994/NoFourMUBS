import FourierPilotCircleTree004779
import FourierPilotCircleTree004780
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004778
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![6, 6, 6, 4, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004779.state FourierPilotCircleTree004780.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004779.covered FourierPilotCircleTree004780.covered
#print axioms covered
end FourierPilotCircleTree004778
