import FourierPilotCircleTree000173
import FourierPilotCircleTree000174
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000172
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![14, 11, 15, 10, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000173.state FourierPilotCircleTree000174.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000173.covered FourierPilotCircleTree000174.covered
#print axioms covered
end FourierPilotCircleTree000172
