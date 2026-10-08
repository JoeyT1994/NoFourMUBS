import FourierPilotCircleTree003775
import FourierPilotCircleTree003778
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003774
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![36, 29, 31, 44, 50]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003775.state FourierPilotCircleTree003778.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003775.covered FourierPilotCircleTree003778.covered
#print axioms covered
end FourierPilotCircleTree003774
