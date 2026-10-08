import FourierPilotCircleTree002062
import FourierPilotCircleTree002091
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002061
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![20, 27, 8, 15, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002062.state FourierPilotCircleTree002091.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002062.covered FourierPilotCircleTree002091.covered
#print axioms covered
end FourierPilotCircleTree002061
