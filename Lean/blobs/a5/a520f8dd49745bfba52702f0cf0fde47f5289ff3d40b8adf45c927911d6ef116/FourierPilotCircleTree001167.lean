import FourierPilotCircleTree001168
import FourierPilotCircleTree001169
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001167
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![36, 58, 31, 44, 50]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001168.state FourierPilotCircleTree001169.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001168.covered FourierPilotCircleTree001169.covered
#print axioms covered
end FourierPilotCircleTree001167
