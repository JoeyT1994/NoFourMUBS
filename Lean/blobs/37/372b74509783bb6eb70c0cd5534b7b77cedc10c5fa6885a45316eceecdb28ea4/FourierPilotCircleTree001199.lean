import FourierPilotCircleTree001200
import FourierPilotCircleTree001201
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001199
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![9, 27, 15, 15, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001200.state FourierPilotCircleTree001201.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001200.covered FourierPilotCircleTree001201.covered
#print axioms covered
end FourierPilotCircleTree001199
