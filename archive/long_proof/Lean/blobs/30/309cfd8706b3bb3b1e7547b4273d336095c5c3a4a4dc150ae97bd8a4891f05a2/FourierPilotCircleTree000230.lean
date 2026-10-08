import FourierPilotCircleTree000231
import FourierPilotCircleTree000232
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000230
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![9, 13, 10, 25, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000231.state FourierPilotCircleTree000232.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000231.covered FourierPilotCircleTree000232.covered
#print axioms covered
end FourierPilotCircleTree000230
