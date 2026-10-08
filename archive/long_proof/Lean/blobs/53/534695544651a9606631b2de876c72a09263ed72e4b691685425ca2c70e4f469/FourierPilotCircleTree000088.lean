import FourierPilotCircleTree000089
import FourierPilotCircleTree000090
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000088
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![20, 29, 27, 16, 44]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000089.state FourierPilotCircleTree000090.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000089.covered FourierPilotCircleTree000090.covered
#print axioms covered
end FourierPilotCircleTree000088
