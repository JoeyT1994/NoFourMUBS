import FourierPilotCircleTree000421
import FourierPilotCircleTree000430
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000420
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![38, 38, 32, 104, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000421.state FourierPilotCircleTree000430.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000421.covered FourierPilotCircleTree000430.covered
#print axioms covered
end FourierPilotCircleTree000420
