import FourierPilotCircleTree000407
import FourierPilotCircleTree000440
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000406
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![9, 9, 4, 13, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000407.state FourierPilotCircleTree000440.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000407.covered FourierPilotCircleTree000440.covered
#print axioms covered
end FourierPilotCircleTree000406
