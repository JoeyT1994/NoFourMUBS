import FourierPilotCircleTree000272
import FourierPilotCircleTree000273
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000271
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![11, 14, 15, 7, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000272.state FourierPilotCircleTree000273.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000272.covered FourierPilotCircleTree000273.covered
#print axioms covered
end FourierPilotCircleTree000271
