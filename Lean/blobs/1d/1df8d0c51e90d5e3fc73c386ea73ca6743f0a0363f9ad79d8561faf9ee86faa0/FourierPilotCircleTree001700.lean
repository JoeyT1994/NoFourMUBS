import FourierPilotCircleTree001701
import FourierPilotCircleTree001714
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001700
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![40, 30, 27, 53, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001701.state FourierPilotCircleTree001714.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001701.covered FourierPilotCircleTree001714.covered
#print axioms covered
end FourierPilotCircleTree001700
