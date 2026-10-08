import FourierPilotCircleTree002166
import FourierPilotCircleTree002167
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002165
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![13, 10, 15, 8, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002166.state FourierPilotCircleTree002167.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002166.covered FourierPilotCircleTree002167.covered
#print axioms covered
end FourierPilotCircleTree002165
