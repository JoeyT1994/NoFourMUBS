import FourierPilotCircleTree000624
import FourierPilotCircleTree000657
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000623
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![23, 22, 20, 15, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000624.state FourierPilotCircleTree000657.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000624.covered FourierPilotCircleTree000657.covered
#print axioms covered
end FourierPilotCircleTree000623
