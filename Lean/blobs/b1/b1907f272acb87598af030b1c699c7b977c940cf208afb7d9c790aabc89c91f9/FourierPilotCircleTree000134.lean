import FourierPilotCircleTree000135
import FourierPilotCircleTree000136
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000134
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![27, 18, 20, 31, 50]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000135.state FourierPilotCircleTree000136.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000135.covered FourierPilotCircleTree000136.covered
#print axioms covered
end FourierPilotCircleTree000134
