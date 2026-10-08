import FourierPilotCircleTree002014
import FourierPilotCircleTree002037
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002013
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![9, 14, 4, 11, 12]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002014.state FourierPilotCircleTree002037.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002014.covered FourierPilotCircleTree002037.covered
#print axioms covered
end FourierPilotCircleTree002013
