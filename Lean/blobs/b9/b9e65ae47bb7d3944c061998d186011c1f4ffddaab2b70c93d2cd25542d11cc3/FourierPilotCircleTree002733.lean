import FourierPilotCircleTree002734
import FourierPilotCircleTree002735
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002733
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![5, 6, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002734.state FourierPilotCircleTree002735.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002734.covered FourierPilotCircleTree002735.covered
#print axioms covered
end FourierPilotCircleTree002733
