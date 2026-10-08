import FourierPilotCircleTree002512
import FourierPilotCircleTree002513
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002511
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![11, 9, 15, 15, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002512.state FourierPilotCircleTree002513.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002512.covered FourierPilotCircleTree002513.covered
#print axioms covered
end FourierPilotCircleTree002511
