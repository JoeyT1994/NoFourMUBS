import FourierPilotCircleTree005539
import FourierPilotCircleTree005540
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005538
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![29, 20, 27, 45, 16]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005539.state FourierPilotCircleTree005540.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005539.covered FourierPilotCircleTree005540.covered
#print axioms covered
end FourierPilotCircleTree005538
