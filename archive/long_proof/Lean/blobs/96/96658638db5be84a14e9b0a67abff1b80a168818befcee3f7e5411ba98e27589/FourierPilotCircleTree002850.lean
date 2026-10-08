import FourierPilotCircleTree002851
import FourierPilotCircleTree002852
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002850
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![6, 6, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002851.state FourierPilotCircleTree002852.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002851.covered FourierPilotCircleTree002852.covered
#print axioms covered
end FourierPilotCircleTree002850
