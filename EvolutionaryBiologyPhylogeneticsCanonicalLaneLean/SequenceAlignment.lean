import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyPhylogeneticsCanonicalLaneLean

structure SequenceAlignmentPackage where
  querySequence : String
  referenceSequence : String
  matchScore : Float
  mismatchPenalty : Float
  gapPenalty : Float
  alignmentMatrix : Type u
  optimalAlignment : String
  alignmentScore : Float

structure SequenceAlignmentEvidence (S : SequenceAlignmentPackage) where
  querySequenceNonempty : S.querySequence ≠ ""
  referenceSequenceNonempty : S.referenceSequence ≠ ""
  matchScorePositive : S.matchScore > 0
  mismatchPenaltyNegative : S.mismatchPenalty < 0
  gapPenaltyNegative : S.gapPenalty < 0
  alignmentMatrixDerived : Prop
  optimalAlignmentDerived : S.optimalAlignment = ""
  alignmentScoreDerived : S.alignmentScore = 0

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.querySequence ≠ "" ∧ S.referenceSequence ≠ "" ∧
  S.matchScore > 0 ∧ S.mismatchPenalty < 0 ∧ S.gapPenalty < 0

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentPackage) (E : SequenceAlignmentEvidence S) : SequenceAlignmentClosed S := by
  exact And.intro E.querySequenceNonempty (And.intro E.referenceSequenceNonempty (And.intro E.matchScorePositive (And.intro E.mismatchPenaltyNegative E.gapPenaltyNegative)))

end EvolutionaryBiologyPhylogeneticsCanonicalLaneLean
end HautevilleHouse