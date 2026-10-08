import FourierPilotCircleTree000910
import FourierPilotCircleTree000911
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000909
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![6, 7, 4, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000910.state FourierPilotCircleTree000911.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000910.covered FourierPilotCircleTree000911.covered
#print axioms covered
end FourierPilotCircleTree000909
