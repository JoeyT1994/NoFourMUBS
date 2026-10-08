import FourierPilotCircleTree002898
import FourierPilotCircleTree002899
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002897
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![18, 29, 16, 45, 25]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002898.state FourierPilotCircleTree002899.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002898.covered FourierPilotCircleTree002899.covered
#print axioms covered
end FourierPilotCircleTree002897
