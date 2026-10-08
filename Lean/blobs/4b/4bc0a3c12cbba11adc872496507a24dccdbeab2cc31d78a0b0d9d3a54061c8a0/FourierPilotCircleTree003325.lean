import FourierPilotCircleTree003326
import FourierPilotCircleTree003327
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003325
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![60, 80, 54, 104, 107]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003326.state FourierPilotCircleTree003327.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003326.covered FourierPilotCircleTree003327.covered
#print axioms covered
end FourierPilotCircleTree003325
