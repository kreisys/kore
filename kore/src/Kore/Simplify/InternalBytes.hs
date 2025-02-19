{- |
Copyright   : (c) Runtime Verification, 2018-2021
License     : BSD-3-Clause
-}
module Kore.Simplify.InternalBytes (
    simplify,
) where

import Kore.Internal.InternalBytes
import Kore.Internal.OrPattern (
    OrPattern,
 )
import qualified Kore.Internal.OrPattern as OrPattern
import Kore.Internal.TermLike
import Kore.Rewrite.RewritingVariable (
    RewritingVariableName,
 )
import Prelude.Kore

simplify ::
    InternalBytes ->
    OrPattern RewritingVariableName
simplify = OrPattern.fromPattern . pure . mkInternalBytes'
