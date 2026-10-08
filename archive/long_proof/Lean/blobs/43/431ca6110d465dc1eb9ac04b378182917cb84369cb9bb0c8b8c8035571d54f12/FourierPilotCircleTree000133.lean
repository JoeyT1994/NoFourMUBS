import FourierPilotCircleTree000134
import FourierPilotCircleTree000137
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000133
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![27, 18, 20, 31, 25]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000134.state FourierPilotCircleTree000137.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000134.covered FourierPilotCircleTree000137.covered
#print axioms covered
end FourierPilotCircleTree000133
