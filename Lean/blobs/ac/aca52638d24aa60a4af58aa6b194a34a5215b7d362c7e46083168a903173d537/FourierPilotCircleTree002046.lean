import FourierPilotCircleTree002047
import FourierPilotCircleTree002098
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002046
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![5, 3, 2, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002047.state FourierPilotCircleTree002098.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002047.covered FourierPilotCircleTree002098.covered
#print axioms covered
end FourierPilotCircleTree002046
