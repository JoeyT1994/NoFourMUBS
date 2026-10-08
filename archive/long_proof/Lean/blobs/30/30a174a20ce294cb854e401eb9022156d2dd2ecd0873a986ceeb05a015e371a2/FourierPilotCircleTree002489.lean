import FourierPilotCircleTree002490
import FourierPilotCircleTree002491
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002489
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![2, 2, 3, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002490.state FourierPilotCircleTree002491.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002490.covered FourierPilotCircleTree002491.covered
#print axioms covered
end FourierPilotCircleTree002489
