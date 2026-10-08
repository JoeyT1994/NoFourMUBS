import FourierPilotCircleTree005534
import FourierPilotCircleTree005541
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005533
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![29, 20, 27, 22, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005534.state FourierPilotCircleTree005541.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005534.covered FourierPilotCircleTree005541.covered
#print axioms covered
end FourierPilotCircleTree005533
