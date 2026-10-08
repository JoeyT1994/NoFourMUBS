import FourierPilotCircleTree002658
import FourierPilotCircleTree002707
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002657
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![3, 3, 2, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002658.state FourierPilotCircleTree002707.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002658.covered FourierPilotCircleTree002707.covered
#print axioms covered
end FourierPilotCircleTree002657
