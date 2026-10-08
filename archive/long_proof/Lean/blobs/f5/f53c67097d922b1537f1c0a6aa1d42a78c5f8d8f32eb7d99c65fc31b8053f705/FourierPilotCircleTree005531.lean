import FourierPilotCircleTree005532
import FourierPilotCircleTree005533
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005531
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![14, 20, 27, 22, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005532.state FourierPilotCircleTree005533.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005532.covered FourierPilotCircleTree005533.covered
#print axioms covered
end FourierPilotCircleTree005531
