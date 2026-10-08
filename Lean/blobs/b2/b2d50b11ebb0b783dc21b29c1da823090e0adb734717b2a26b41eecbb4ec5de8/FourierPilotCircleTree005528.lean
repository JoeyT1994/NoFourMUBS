import FourierPilotCircleTree005529
import FourierPilotCircleTree005542
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005528
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![14, 10, 13, 22, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005529.state FourierPilotCircleTree005542.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005529.covered FourierPilotCircleTree005542.covered
#print axioms covered
end FourierPilotCircleTree005528
