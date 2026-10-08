import FourierPilotCircleTree000117
import FourierPilotCircleTree000144
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000116
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![6, 4, 5, 7, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000117.state FourierPilotCircleTree000144.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000117.covered FourierPilotCircleTree000144.covered
#print axioms covered
end FourierPilotCircleTree000116
