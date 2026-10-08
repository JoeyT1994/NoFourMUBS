import FourierPilotCircleTree005060
import FourierPilotCircleTree005105
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005059
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![4, 4, 7, 6, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005060.state FourierPilotCircleTree005105.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005060.covered FourierPilotCircleTree005105.covered
#print axioms covered
end FourierPilotCircleTree005059
