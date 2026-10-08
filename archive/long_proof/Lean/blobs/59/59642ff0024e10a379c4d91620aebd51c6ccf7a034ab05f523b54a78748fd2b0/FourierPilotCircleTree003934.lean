import FourierPilotCircleTree003935
import FourierPilotCircleTree003938
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003934
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![14, 10, 8, 8, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003935.state FourierPilotCircleTree003938.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003935.covered FourierPilotCircleTree003938.covered
#print axioms covered
end FourierPilotCircleTree003934
