import FourierPilotCircleTree003774
import FourierPilotCircleTree003779
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003773
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![18, 29, 31, 44, 50]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003774.state FourierPilotCircleTree003779.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003774.covered FourierPilotCircleTree003779.covered
#print axioms covered
end FourierPilotCircleTree003773
