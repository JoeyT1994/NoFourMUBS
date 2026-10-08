import FourierPilotCircleTree002013
import FourierPilotCircleTree002038
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002012
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![9, 7, 4, 11, 12]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002013.state FourierPilotCircleTree002038.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002013.covered FourierPilotCircleTree002038.covered
#print axioms covered
end FourierPilotCircleTree002012
