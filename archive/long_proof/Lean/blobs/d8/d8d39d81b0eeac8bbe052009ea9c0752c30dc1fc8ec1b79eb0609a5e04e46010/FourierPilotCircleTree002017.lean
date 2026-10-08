import FourierPilotCircleTree002018
import FourierPilotCircleTree002035
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002017
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![9, 14, 8, 22, 25]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002018.state FourierPilotCircleTree002035.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002018.covered FourierPilotCircleTree002035.covered
#print axioms covered
end FourierPilotCircleTree002017
