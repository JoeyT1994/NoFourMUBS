import FourierPilotCircleTree002514
import FourierPilotCircleTree002537
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002513
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![23, 9, 15, 15, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002514.state FourierPilotCircleTree002537.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002514.covered FourierPilotCircleTree002537.covered
#print axioms covered
end FourierPilotCircleTree002513
