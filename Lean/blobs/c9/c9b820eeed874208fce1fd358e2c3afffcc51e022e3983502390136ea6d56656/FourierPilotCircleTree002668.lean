import FourierPilotCircleTree002669
import FourierPilotCircleTree002698
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002668
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![12, 14, 4, 4, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002669.state FourierPilotCircleTree002698.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002669.covered FourierPilotCircleTree002698.covered
#print axioms covered
end FourierPilotCircleTree002668
