# pandoc-eq-num

Numbering equations with Pandoc - experiments.

# Play with basic examples

Convert 2 minimal samples `basic.tex` and `basic.md` to various formats and compare outputs.



### HTML: pandoc-crossref, autoEqnLabels.

```sh
pandoc --verbose basic.tex -s -F pandoc-crossref -M autoEqnLabels -o basic-tex.html
pandoc --verbose basic.md -s -F pandoc-crossref -M autoEqnLabels -o basic-md.html
```

Tex to HTML:

```html
<p><span><span
class="math display"><em>y</em> = <em>F</em>(<em>x</em>)   (1)</span></span></p>
<p>Eqref <a href="#eq:sample" data-reference-type="eqref"
data-reference="eq:sample">[eq:sample]</a>. Ref <a href="#eq:sample"
data-reference-type="ref"
data-reference="eq:sample">[eq:sample]</a>.</p>
```

Markdown to HTML:

```html
<p><span id="eq:sample"><span
class="math display"><em>y</em> = <em>F</em>(<em>x</em>)   (1)</span></span></p>
<p>Ref to eq. 1.</p>
```



### JATS: pandoc-crossref, autoEqnLabels.

Convert to JATS Publishing.

```sh
pandoc --verbose basic.tex -s -F pandoc-crossref -M autoEqnLabels -t jats_publishing -o basic-tex-jats-pub.xml
pandoc --verbose basic.md -s -F pandoc-crossref -M autoEqnLabels -t jats_publishing -o basic-md-jats-pub.xml
```

Tex to JATS:

```xml
<p><disp-formula><alternatives>
<tex-math><![CDATA[y = F(x) \label{eq:sample}\qquad{(1)}]]></tex-math>
<mml:math display="block" xmlns:mml="http://www.w3.org/1998/Math/MathML"><mml:mrow><mml:mi>y</mml:mi><mml:mo>=</mml:mo><mml:mi>F</mml:mi><mml:mrow><mml:mo stretchy="true" form="prefix">(</mml:mo><mml:mi>x</mml:mi><mml:mo stretchy="true" form="postfix">)</mml:mo></mml:mrow><mml:mspace width="2.0em"></mml:mspace><mml:mrow><mml:mo stretchy="true" form="prefix">(</mml:mo><mml:mn>1</mml:mn><mml:mo stretchy="true" form="postfix">)</mml:mo></mml:mrow></mml:mrow></mml:math></alternatives></disp-formula></p>
<p>Eqref <xref alt="[eq:sample]" rid="eqU003Asample">[eq:sample]</xref>.
Ref <xref alt="[eq:sample]" rid="eqU003Asample">[eq:sample]</xref>.</p>
```

Markdown to JATS Publishing:

```xml
<p><styled-content id="eqU003Asample"><disp-formula><alternatives>
<tex-math><![CDATA[y = F(x)\qquad{(1)}]]></tex-math>
<mml:math display="block" xmlns:mml="http://www.w3.org/1998/Math/MathML"><mml:mrow><mml:mi>y</mml:mi><mml:mo>=</mml:mo><mml:mi>F</mml:mi><mml:mrow><mml:mo stretchy="true" form="prefix">(</mml:mo><mml:mi>x</mml:mi><mml:mo stretchy="true" form="postfix">)</mml:mo></mml:mrow><mml:mspace width="2.0em"></mml:mspace><mml:mrow><mml:mo stretchy="true" form="prefix">(</mml:mo><mml:mn>1</mml:mn><mml:mo stretchy="true" form="postfix">)</mml:mo></mml:mrow></mml:mrow></mml:math></alternatives></disp-formula></styled-content></p>
<p>Ref to eq. 1.</p>
```



### Native: pandoc-crossref, autoEqnLabels.

```sh
pandoc --verbose basic.tex -s -F pandoc-crossref -M autoEqnLabels -t native -o basic-tex.hs
pandoc --verbose basic.md -s -F pandoc-crossref -M autoEqnLabels -t native -o basic-md.hs
```

Tex to native:

```haskell
[ Para
  [ Span
      ( "" , [] , [] )
      [ Math DisplayMath "y = F(x) \\label{eq:sample}\\qquad{(1)}"
      ]
  ]
, Para
  [ Str "Eqref"
  , Space
  , Link
      ( ""
      , []
      , [ ( "reference-type" , "eqref" )
        , ( "reference" , "eq:sample" )
        ]
      )
      [ Str "[eq:sample]" ]
      ( "#eq:sample" , "" )
  , Str "."
  , SoftBreak
  , Str "Ref"
  , Space
  , Link
      ( ""
      , []
      , [ ( "reference-type" , "ref" )
        , ( "reference" , "eq:sample" )
        ]
      )
      [ Str "[eq:sample]" ]
      ( "#eq:sample" , "" )
  , Str "."
  ]
]
```

Markdown to native:
```haskell
[ Para
  [ Span
      ( "eq:sample" , [] , [] )
      [ Math DisplayMath "y = F(x)\\qquad{(1)}" ]
  ]
, Para
  [ Str "Ref" , Space , Str "to" , Space , Str "eq.\160\&1." ]
]
```