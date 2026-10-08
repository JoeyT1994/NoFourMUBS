import FourierPilotCircleTree005536
import FourierPilotCircleTree005537
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005535
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![29, 20, 27, 44, 16]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005536.state FourierPilotCircleTree005537.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005536.covered FourierPilotCircleTree005537.covered
#print axioms covered
end FourierPilotCircleTree005535
