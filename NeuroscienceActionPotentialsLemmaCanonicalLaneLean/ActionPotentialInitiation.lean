import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsLemmaCanonicalLaneLean

structure ActionPotentialInitiation where
  thresholdPotential : ℝ
  sodiumChannelDensity : ℝ
  depolarizationRate : ℝ
  initiationCondition : Prop
  positiveFeedbackLoop : Prop
  initiationConditionClosed : initiationCondition
  positiveFeedbackLoopClosed : positiveFeedbackLoop

structure InitiationEvidence (I : ActionPotentialInitiation) where
  initiationConditionClosed : I.initiationCondition
  positiveFeedbackLoopClosed : I.positiveFeedbackLoop

def InitiationClosed (I : ActionPotentialInitiation) : Prop :=
  I.initiationCondition ∧ I.positiveFeedbackLoop

theorem initiation_closed_from_evidence (I : ActionPotentialInitiation) (Ev : InitiationEvidence I) : InitiationClosed I := by
  exact And.intro Ev.initiationConditionClosed Ev.positiveFeedbackLoopClosed

end NeuroscienceActionPotentialsLemmaCanonicalLaneLean
end HautevilleHouse