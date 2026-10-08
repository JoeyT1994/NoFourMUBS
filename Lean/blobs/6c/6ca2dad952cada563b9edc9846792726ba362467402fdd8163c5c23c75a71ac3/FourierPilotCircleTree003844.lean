import FourierPilotCircleTree003845
import FourierPilotCircleTree003846
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003844
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![80, 55, 63, 61, 34]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003845.state FourierPilotCircleTree003846.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003845.covered FourierPilotCircleTree003846.covered
#print axioms covered
end FourierPilotCircleTree003844
