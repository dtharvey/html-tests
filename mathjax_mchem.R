# script for working with MathJax and mhchem

# updated code for including mhchem in MathJax

```{=html}
<script type="text/x-mathjax-config">
  MathJax.Ajax.config.path["mhchem"] =
    "https://cdnjs.cloudflare.com/ajax/libs/mathjax-mhchem/3.3.2";
  MathJax.Hub.Config({
    TeX: {
      extensions: ["[mhchem]/mhchem.js"]
    }
  });
  MathJax.Hub.Config({ 
    "HTML-CSS": { scale: 90 }, 
    SVG: { linebreaks: { automatic:true } }, 
  });
  </script>
    ```
  
# old code, which was not working in August 2024

  ```{=html}
  <script type="text/x-mathjax-config">
    MathJax.Hub.Config({
      TeX: {
        extensions: ["[Contrib]/mhchem/mhchem.js"]
      }
    });
  MathJax.Hub.Config({ 
    "HTML-CSS": { scale: 90 }, 
    SVG: { linebreaks: { automatic:true } }, 
  });
  </script>
    ```
