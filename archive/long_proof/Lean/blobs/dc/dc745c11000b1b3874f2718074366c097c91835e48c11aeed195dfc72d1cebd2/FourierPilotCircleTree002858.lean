import FourierPilotCircleTree002859
import FourierPilotCircleTree002868
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002858
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![2, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002859.state FourierPilotCircleTree002868.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002859.covered FourierPilotCircleTree002868.covered
#print axioms covered
end FourierPilotCircleTree002858
