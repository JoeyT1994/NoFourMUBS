import FourierPilotCircleTree002622
import FourierPilotCircleTree002645
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002621
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![14, 10, 13, 22, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002622.state FourierPilotCircleTree002645.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002622.covered FourierPilotCircleTree002645.covered
#print axioms covered
end FourierPilotCircleTree002621
