import FourierPilotCircleTree000694
import FourierPilotCircleTree000695
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000693
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![3, 2, 2, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000694.state FourierPilotCircleTree000695.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000694.covered FourierPilotCircleTree000695.covered
#print axioms covered
end FourierPilotCircleTree000693
