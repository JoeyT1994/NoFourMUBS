import FourierPilotCircleTree002099
import FourierPilotCircleTree002118
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002098
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![5, 7, 2, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002099.state FourierPilotCircleTree002118.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002099.covered FourierPilotCircleTree002118.covered
#print axioms covered
end FourierPilotCircleTree002098
