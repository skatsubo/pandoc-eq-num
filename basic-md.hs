Pandoc
  Meta
    { unMeta =
        fromList
          [ ( "autoEqnLabels" , MetaBool True )
          , ( "autoSectionLabels" , MetaBool False )
          , ( "ccsDelim" , MetaInlines [ Str "," , Space ] )
          , ( "ccsLabelSep"
            , MetaInlines [ Space , Str "\8212" , Space ]
            )
          , ( "ccsTemplate"
            , MetaInlines
                [ Math DisplayMath "i"
                , Math DisplayMath "ccsLabelSep"
                , Math DisplayMath "t"
                ]
            )
          , ( "chapDelim" , MetaInlines [ Str "." ] )
          , ( "chapters" , MetaBool False )
          , ( "chaptersDepth" , MetaString "1" )
          , ( "codeBlockCaptions" , MetaBool False )
          , ( "cref" , MetaBool False )
          , ( "crossrefYaml" , MetaString "pandoc-crossref.yaml" )
          , ( "eqLabels" , MetaString "arabic" )
          , ( "eqnBlockInlineMath" , MetaBool False )
          , ( "eqnBlockTemplate"
            , MetaBlocks
                [ Table
                    ( "" , [] , [] )
                    (Caption Nothing [])
                    [ ( AlignCenter , ColWidth 0.9 )
                    , ( AlignRight , ColWidth 0.1 )
                    ]
                    (TableHead ( "" , [] , [] ) [])
                    [ TableBody
                        ( "" , [] , [] )
                        (RowHeadColumns 0)
                        []
                        [ Row
                            ( "" , [] , [] )
                            [ Cell
                                ( "" , [] , [] )
                                AlignDefault
                                (RowSpan 1)
                                (ColSpan 1)
                                [ Plain [ Math DisplayMath "t" ] ]
                            , Cell
                                ( "" , [] , [] )
                                AlignDefault
                                (RowSpan 1)
                                (ColSpan 1)
                                [ RawBlock
                                    (Format "openxml")
                                    "<w:tcPr><w:vAlign w:val=\"center\"/></w:tcPr>"
                                , Plain [ Math DisplayMath "i" ]
                                ]
                            ]
                        ]
                    ]
                    (TableFoot ( "" , [] , [] ) [])
                ]
            )
          , ( "eqnIndexTemplate"
            , MetaInlines [ Str "(" , Math DisplayMath "i" , Str ")" ]
            )
          , ( "eqnInlineTemplate"
            , MetaInlines
                [ Math DisplayMath "e"
                , Math DisplayMath "equationNumberTeX"
                , Str "{"
                , Math DisplayMath "i"
                , Str "}"
                ]
            )
          , ( "eqnPrefix"
            , MetaList
                [ MetaInlines [ Str "eq." ]
                , MetaInlines [ Str "eqns." ]
                ]
            )
          , ( "eqnPrefixTemplate"
            , MetaInlines
                [ Math DisplayMath "p"
                , Str "\160"
                , Math DisplayMath "i"
                ]
            )
          , ( "equationNumberTeX" , MetaString "\\qquad" )
          , ( "figLabels" , MetaString "arabic" )
          , ( "figPrefix"
            , MetaList
                [ MetaInlines [ Str "fig." ]
                , MetaInlines [ Str "figs." ]
                ]
            )
          , ( "figPrefixTemplate"
            , MetaInlines
                [ Math DisplayMath "p"
                , Str "\160"
                , Math DisplayMath "i"
                ]
            )
          , ( "figureTemplate"
            , MetaInlines
                [ Math DisplayMath "figureTitle"
                , Space
                , Math DisplayMath "i"
                , Math DisplayMath "titleDelim"
                , Space
                , Math DisplayMath "t"
                ]
            )
          , ( "figureTitle" , MetaInlines [ Str "Figure" ] )
          , ( "lastDelim" , MetaInlines [ Str "," , Space ] )
          , ( "linkReferences" , MetaBool False )
          , ( "listingTemplate"
            , MetaInlines
                [ Math DisplayMath "listingTitle"
                , Space
                , Math DisplayMath "i"
                , Math DisplayMath "titleDelim"
                , Space
                , Math DisplayMath "t"
                ]
            )
          , ( "listingTitle" , MetaInlines [ Str "Listing" ] )
          , ( "listings" , MetaBool False )
          , ( "lofTitle"
            , MetaBlocks
                [ Header
                    1
                    ( "" , [] , [] )
                    [ Str "List"
                    , Space
                    , Str "of"
                    , Space
                    , Str "Figures"
                    ]
                ]
            )
          , ( "lolTitle"
            , MetaBlocks
                [ Header
                    1
                    ( "" , [] , [] )
                    [ Str "List"
                    , Space
                    , Str "of"
                    , Space
                    , Str "Listings"
                    ]
                ]
            )
          , ( "lotTitle"
            , MetaBlocks
                [ Header
                    1
                    ( "" , [] , [] )
                    [ Str "List"
                    , Space
                    , Str "of"
                    , Space
                    , Str "Tables"
                    ]
                ]
            )
          , ( "lstLabels" , MetaString "arabic" )
          , ( "lstPrefix"
            , MetaList
                [ MetaInlines [ Str "lst." ]
                , MetaInlines [ Str "lsts." ]
                ]
            )
          , ( "lstPrefixTemplate"
            , MetaInlines
                [ Math DisplayMath "p"
                , Str "\160"
                , Math DisplayMath "i"
                ]
            )
          , ( "nameInLink" , MetaBool False )
          , ( "numberSections" , MetaBool False )
          , ( "pairDelim" , MetaInlines [ Str "," , Space ] )
          , ( "rangeDelim" , MetaInlines [ Str "-" ] )
          , ( "refDelim" , MetaInlines [ Str "," , Space ] )
          , ( "refIndexTemplate"
            , MetaInlines
                [ Math DisplayMath "i" , Math DisplayMath "suf" ]
            )
          , ( "secHeaderDelim" , MetaInlines [ Space ] )
          , ( "secHeaderTemplate"
            , MetaInlines
                [ Math DisplayMath "i"
                , Math DisplayMath "secHeaderDelim[n]"
                , Math DisplayMath "t"
                ]
            )
          , ( "secLabels" , MetaString "arabic" )
          , ( "secPrefix"
            , MetaList
                [ MetaInlines [ Str "sec." ]
                , MetaInlines [ Str "secs." ]
                ]
            )
          , ( "secPrefixTemplate"
            , MetaInlines
                [ Math DisplayMath "p"
                , Str "\160"
                , Math DisplayMath "i"
                ]
            )
          , ( "sectionsDepth" , MetaString "0" )
          , ( "subfigGrid" , MetaBool False )
          , ( "subfigLabels" , MetaString "alpha a" )
          , ( "subfigureChildTemplate"
            , MetaInlines [ Math DisplayMath "i" ]
            )
          , ( "subfigureRefIndexTemplate"
            , MetaInlines
                [ Math DisplayMath "i"
                , Math DisplayMath "suf"
                , Space
                , Str "("
                , Math DisplayMath "s"
                , Str ")"
                ]
            )
          , ( "subfigureTemplate"
            , MetaInlines
                [ Math DisplayMath "figureTitle"
                , Space
                , Math DisplayMath "i"
                , Math DisplayMath "titleDelim"
                , Space
                , Math DisplayMath "t"
                , Str "."
                , Space
                , Math DisplayMath "ccs"
                ]
            )
          , ( "tableEqns" , MetaBool False )
          , ( "tableTemplate"
            , MetaInlines
                [ Math DisplayMath "tableTitle"
                , Space
                , Math DisplayMath "i"
                , Math DisplayMath "titleDelim"
                , Space
                , Math DisplayMath "t"
                ]
            )
          , ( "tableTitle" , MetaInlines [ Str "Table" ] )
          , ( "tblLabels" , MetaString "arabic" )
          , ( "tblPrefix"
            , MetaList
                [ MetaInlines [ Str "tbl." ]
                , MetaInlines [ Str "tbls." ]
                ]
            )
          , ( "tblPrefixTemplate"
            , MetaInlines
                [ Math DisplayMath "p"
                , Str "\160"
                , Math DisplayMath "i"
                ]
            )
          , ( "titleDelim" , MetaInlines [ Str ":" ] )
          ]
    }
  [ Para
      [ Span
          ( "eq:sample" , [] , [] )
          [ Math DisplayMath "y = F(x)\\qquad{(1)}" ]
      ]
  , Para
      [ Str "Ref" , Space , Str "to" , Space , Str "eq.\160\&1." ]
  ]
