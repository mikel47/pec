module Language.Pec.Skel where

-- Haskell module generated by the BNF converter

import Language.Pec.Abs
import Language.Pec.ErrM
type Result = Err String

failure :: Show a => a -> Result
failure x = Bad $ "Undefined case: " ++ show x

transFrac :: Frac -> Result
transFrac x = case x of
  Frac str  -> failure x


transUident :: Uident -> Result
transUident x = case x of
  Uident str  -> failure x


transLident :: Lident -> Result
transLident x = case x of
  Lident str  -> failure x


transUSym :: USym -> Result
transUSym x = case x of
  USym str  -> failure x


transNumber :: Number -> Result
transNumber x = case x of
  Number str  -> failure x


transCount :: Count -> Result
transCount x = case x of
  Count str  -> failure x


transModule :: Module -> Result
transModule x = case x of
  Module modid exportdecl topdecls  -> failure x


transExportDecl :: ExportDecl -> Result
transExportDecl x = case x of
  ExpAllD  -> failure x
  ExpListD exports  -> failure x


transExport :: Export -> Result
transExport x = case x of
  TypeEx con spec  -> failure x
  VarEx var  -> failure x


transSpec :: Spec -> Result
transSpec x = case x of
  Neither  -> failure x
  Decon  -> failure x
  Both  -> failure x


transTopDecl :: TopDecl -> Result
transTopDecl x = case x of
  ImportD modid asspec  -> failure x
  ExternD extnm var type'  -> failure x
  TypeD con tyvars tydecl  -> failure x
  AscribeD var type'  -> failure x
  VarD var exp  -> failure x
  ProcD var exps exp  -> failure x


transAsSpec :: AsSpec -> Result
transAsSpec x = case x of
  AsAS con  -> failure x
  EmptyAS  -> failure x


transExtNm :: ExtNm -> Result
transExtNm x = case x of
  SomeNm str  -> failure x
  NoneNm  -> failure x


transExp :: Exp -> Result
transExp x = case x of
  BlockE exps  -> failure x
  LetS exp0 exp  -> failure x
  LetE exp0 exp1 exp  -> failure x
  StoreE exp0 exp  -> failure x
  CaseE exp casealts  -> failure x
  BranchE branchalts  -> failure x
  BinOpE exp0 usym exp  -> failure x
  AppE exp0 exp  -> failure x
  UnOpE unop exp  -> failure x
  IdxE exp0 exp  -> failure x
  FldE exp field  -> failure x
  ArrayE exps  -> failure x
  RecordE fieldds  -> failure x
  TupleE exps  -> failure x
  AscribeE exp type'  -> failure x
  CountE count  -> failure x
  VarE var  -> failure x
  LitE lit  -> failure x


transUnOp :: UnOp -> Result
transUnOp x = case x of
  Load  -> failure x


transCaseAlt :: CaseAlt -> Result
transCaseAlt x = case x of
  CaseAlt casepat exp  -> failure x


transCasePat :: CasePat -> Result
transCasePat x = case x of
  ConP con var  -> failure x
  LitP lit  -> failure x
  VarP var  -> failure x


transBranchAlt :: BranchAlt -> Result
transBranchAlt x = case x of
  BranchAlt branchpat exp  -> failure x


transBranchPat :: BranchPat -> Result
transBranchPat x = case x of
  BoolBP exp  -> failure x
  DefaultBP  -> failure x


transType :: Type -> Result
transType x = case x of
  TyFun type'0 type'  -> failure x
  TyArray type'0 type'  -> failure x
  TyConstr con types  -> failure x
  TyTuple types  -> failure x
  TyCount count  -> failure x
  TyVarT tyvar  -> failure x
  TyConstr0 con  -> failure x


transTyDecl :: TyDecl -> Result
transTyDecl x = case x of
  TyRecord fieldts  -> failure x
  TyTagged concs  -> failure x
  TySyn type'  -> failure x


transConC :: ConC -> Result
transConC x = case x of
  ConC con types  -> failure x


transFieldT :: FieldT -> Result
transFieldT x = case x of
  FieldT field type'  -> failure x


transLit :: Lit -> Result
transLit x = case x of
  CharL c  -> failure x
  StringL str  -> failure x
  IntL number  -> failure x
  FracL frac  -> failure x
  EnumL con  -> failure x


transFieldD :: FieldD -> Result
transFieldD x = case x of
  FieldD field exp  -> failure x


transVar :: Var -> Result
transVar x = case x of
  Var lident  -> failure x


transCon :: Con -> Result
transCon x = case x of
  Con uident  -> failure x


transModid :: Modid -> Result
transModid x = case x of
  Modid uident  -> failure x


transField :: Field -> Result
transField x = case x of
  Field lident  -> failure x


transTyVar :: TyVar -> Result
transTyVar x = case x of
  VarTV lident  -> failure x
  CntTV lident  -> failure x


