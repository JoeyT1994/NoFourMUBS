import FourierPilotCircleTree000038
import FourierPilotCircleTree000047
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000037
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![19, 24, 8, 26, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000038.state FourierPilotCircleTree000047.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000038.covered FourierPilotCircleTree000047.covered
#print axioms covered
end FourierPilotCircleTree000037
