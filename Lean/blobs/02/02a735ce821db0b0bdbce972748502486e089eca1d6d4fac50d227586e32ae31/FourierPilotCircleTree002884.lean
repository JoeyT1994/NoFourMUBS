import FourierPilotCircleTree002885
import FourierPilotCircleTree002910
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002884
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![9, 7, 4, 11, 12]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002885.state FourierPilotCircleTree002910.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002885.covered FourierPilotCircleTree002910.covered
#print axioms covered
end FourierPilotCircleTree002884
