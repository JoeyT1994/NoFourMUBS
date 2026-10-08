import FourierPilotCircleTree002579
import FourierPilotCircleTree002580
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002578
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![74, 54, 41, 102, 32]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002579.state FourierPilotCircleTree002580.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002579.covered FourierPilotCircleTree002580.covered
#print axioms covered
end FourierPilotCircleTree002578
