import FourierPilotCircleTree000858
import FourierPilotCircleTree000859
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000857
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![22, 23, 20, 26, 31]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000858.state FourierPilotCircleTree000859.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000858.covered FourierPilotCircleTree000859.covered
#print axioms covered
end FourierPilotCircleTree000857
