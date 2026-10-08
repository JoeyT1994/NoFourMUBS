import FourierPilotCircleTree002100
import FourierPilotCircleTree002101
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002099
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![5, 7, 4, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002100.state FourierPilotCircleTree002101.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002100.covered FourierPilotCircleTree002101.covered
#print axioms covered
end FourierPilotCircleTree002099
