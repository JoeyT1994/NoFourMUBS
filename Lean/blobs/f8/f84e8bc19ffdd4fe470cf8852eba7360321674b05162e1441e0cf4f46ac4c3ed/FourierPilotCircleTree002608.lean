import FourierPilotCircleTree002609
import FourierPilotCircleTree002610
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002608
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![7, 5, 6, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002609.state FourierPilotCircleTree002610.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002609.covered FourierPilotCircleTree002610.covered
#print axioms covered
end FourierPilotCircleTree002608
