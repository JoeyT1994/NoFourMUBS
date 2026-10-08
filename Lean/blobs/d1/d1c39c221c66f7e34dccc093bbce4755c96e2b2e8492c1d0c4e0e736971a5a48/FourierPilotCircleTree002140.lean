import FourierPilotCircleTree002141
import FourierPilotCircleTree002142
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002140
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![13, 4, 7, 4, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002141.state FourierPilotCircleTree002142.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002141.covered FourierPilotCircleTree002142.covered
#print axioms covered
end FourierPilotCircleTree002140
