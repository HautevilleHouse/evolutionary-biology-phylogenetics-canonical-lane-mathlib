import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyPhylogeneticsCanonicalLaneLean

structure PhylogeneticTreePackage where
  taxa : List String
  treeTopology : Type u
  branchLengths : Type v
  likelihoodScore : Prop
  bootstrapSupport : Prop
  molecularClock : Prop

structure PhylogeneticTreeEvidence (P : PhylogeneticTreePackage) where
  treeTopologyClosed : P.treeTopology
  branchLengthsClosed : P.branchLengths
  likelihoodScoreClosed : P.likelihoodScore
  bootstrapSupportClosed : P.bootstrapSupport
  molecularClockClosed : P.molecularClock

def PhylogeneticTreeClosed (P : PhylogeneticTreePackage) : Prop :=
  P.treeTopology ∧ P.branchLengths ∧ P.likelihoodScore ∧ P.bootstrapSupport ∧ P.molecularClock

theorem phylogenetic_tree_closed_from_evidence (P : PhylogeneticTreePackage)
    (E : PhylogeneticTreeEvidence P) : PhylogeneticTreeClosed P := by
  exact And.intro E.treeTopologyClosed
    (And.intro E.branchLengthsClosed
      (And.intro E.likelihoodScoreClosed
        (And.intro E.bootstrapSupportClosed E.molecularClockClosed)))

end EvolutionaryBiologyPhylogeneticsCanonicalLaneLean
end HautevilleHouse