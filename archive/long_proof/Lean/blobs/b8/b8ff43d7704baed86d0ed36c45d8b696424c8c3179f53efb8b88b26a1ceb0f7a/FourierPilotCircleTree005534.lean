import FourierPilotCircleTree005535
import FourierPilotCircleTree005538
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005534
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![29, 20, 27, 22, 16]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005535.state FourierPilotCircleTree005538.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005535.covered FourierPilotCircleTree005538.covered
#print axioms covered
end FourierPilotCircleTree005534
