#import "functions.typ": *

#outline(title: [Contents])
#pagebreak()

// #refer([@eq])

// #set ref(supplement: (params) => params.func())
@eq
$
  (diff^2 phi.alt) / (diff y^2)
  = frac(diff \(frac(diff phi.alt, diff z) - frac(diff phi.alt, diff macron(z))\), diff macron(z))
  + frac(diff \(frac(diff phi.alt, diff macron(z)) - frac(diff phi.alt, diff z)\), diff z)
  = - frac(diff^2 phi.alt, diff z^2) + 2 frac(diff^2 phi.alt, diff z diff macron(z)) - frac(diff^2 phi.alt, diff macron(z)^2)
$

$
  nabla^2 phi.alt = 4 frac(diff^2 phi.alt, diff z diff macron(z))
$

$
  nabla^2 phi.alt = 0 -> frac(diff^2 phi.alt, diff z diff macron(z)) = 0 
$

$
  frac(diff phi.alt, diff z) = f'\(z\)
$

[@eq2]

$
  phi.alt = integral f'(z)" "upright(d)z 
$

$
  phi.alt = f \(z\) + g\(macron(z)\)
$

#let partial = math.diff

Hello this is #math.diff\x and #math.sin\(2) sin(2)

#numeq($
  partial x = i partial y
$)<eq>

#numeq($
  partial y = - i partial z
$)<eq2>

$
  partial z = - i partial x
$


#set text(fill: gradient.linear(..color.map.rainbow))

#rect(fill: rgb("#001f3f"), radius: 5%, stroke: 0.1em + gradient.radial(..color.map.rainbow),
[
  #lorem(100)
  #text(fill: blue)[This text is blue]
]
)


#set text(fill: black)

= Code

== #underline[Latex]:
\

#rect(stroke: gradient.linear(..color.map.rainbow), inset: 10pt,
```tex
\[
    \nabla^2 \phi = 4 \frac{\partial^2 \phi}{\partial z \partial \bar{z}}
\]
```
)

== #underline[python]:
\
#rect(stroke: black, inset: 10pt,
```python
def clean_indication_title(self, text: str) -> str:
    text = re.sub(r'\s+', ' ', text).strip()
    text = re.sub(REGEX.STRIP_NUMBER, "", text)
    if text.endswith(":"):
        text = text[:-1]
    return text
```
)
== #underline[Typst]:
\
#rect(stroke: black, inset: 10pt,
```typ
#rect(fill: rgb("#001f3f"), radius: 25%, stroke: 0.1em + gradient.radial(..color.map.rainbow),
  [This text is colorful. This text is colorful. This text is colorful. #text(fill: blue)[This text is blue]]
)
```
)

// #image("Screenshot 2024-10-31 at 3.19.13 PM.png", width: 50%)

#let item(..content) = list(marker: [--], spacing: 1pt, ..content)

// #item([meow],[nkkkk])

#let numbering_style = (sep: str, style: str, nums) => {
  let styles = style.split(sep)
  let diff = nums.pos().len() - styles.len()
  for _ in range(diff) {
    styles.push(styles.at(-1))
  }
  styles.zip(nums.pos()).map(s => numbering(s.at(0), s.at(1))).at(-1)
}

#set enum(full: true, numbering: (..nums) => numbering_style(sep: "%", style: "a.%1)%[i]", nums))

+ #lorem(2)
  + #lorem(1)
    + #lorem(20)
      + hello
      + world
    + #lorem(20)
    + #lorem(20)
  + #lorem(3)
+ #lorem(2)

