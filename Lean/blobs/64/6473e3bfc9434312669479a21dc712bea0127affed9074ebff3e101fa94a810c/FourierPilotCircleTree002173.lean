import FourierPilotCircleTree002174
import FourierPilotCircleTree002175
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002173
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![27, 20, 31, 16, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002174.state FourierPilotCircleTree002175.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002174.covered FourierPilotCircleTree002175.covered
#print axioms covered
end FourierPilotCircleTree002173
