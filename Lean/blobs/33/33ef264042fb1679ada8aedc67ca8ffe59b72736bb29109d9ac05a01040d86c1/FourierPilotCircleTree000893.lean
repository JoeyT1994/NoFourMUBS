import FourierPilotCircleTree000894
import FourierPilotCircleTree000901
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000893
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![3, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000894.state FourierPilotCircleTree000901.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000894.covered FourierPilotCircleTree000901.covered
#print axioms covered
end FourierPilotCircleTree000893
