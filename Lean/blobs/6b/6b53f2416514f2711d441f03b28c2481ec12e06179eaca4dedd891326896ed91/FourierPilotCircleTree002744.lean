import FourierPilotCircleTree002745
import FourierPilotCircleTree002746
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002744
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![11, 12, 7, 13, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002745.state FourierPilotCircleTree002746.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002745.covered FourierPilotCircleTree002746.covered
#print axioms covered
end FourierPilotCircleTree002744
