import FourierPilotCircleTree005071
import FourierPilotCircleTree005072
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005070
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![9, 9, 7, 13, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005071.state FourierPilotCircleTree005072.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005071.covered FourierPilotCircleTree005072.covered
#print axioms covered
end FourierPilotCircleTree005070
