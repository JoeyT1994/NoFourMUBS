import FourierPilotCircleTree002453
import FourierPilotCircleTree002458
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002452
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![60, 40, 54, 104, 107]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002453.state FourierPilotCircleTree002458.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002453.covered FourierPilotCircleTree002458.covered
#print axioms covered
end FourierPilotCircleTree002452
