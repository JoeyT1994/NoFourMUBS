import FourierPilotCircleTree002234
import FourierPilotCircleTree002239
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002233
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![29, 18, 31, 50, 44]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002234.state FourierPilotCircleTree002239.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002234.covered FourierPilotCircleTree002239.covered
#print axioms covered
end FourierPilotCircleTree002233
