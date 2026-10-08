import FourierPilotCircleTree002961
import FourierPilotCircleTree002962
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002960
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![20, 27, 16, 31, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002961.state FourierPilotCircleTree002962.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002961.covered FourierPilotCircleTree002962.covered
#print axioms covered
end FourierPilotCircleTree002960
