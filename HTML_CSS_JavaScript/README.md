# Web (HTML, CSS, JavaScript, etc.)
## EDIBO specific
### Install node via nvm
export NVM_DIR="$HOME/.nvm" && (
git clone https://github.com/nvm-sh/nvm.git "$NVM_DIR"
cd "$NVM_DIR"
git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
) && \. "$NVM_DIR/nvm.sh"

### Install specific version
nvm i 12

### Execute in a Terminal window to a enable it to use npm etc.
export NVM_DIR="$HOME/.nvm" && \. "$NVM_DIR/nvm.sh"

## For Linux
[Installing node and npm](https://github.com/nodesource/distributions/blob/master/README.md)  

## Resources

[repl.it](https://repl.it/)  
[my personal repl](https://repl.it/@makgar/)  

[Angular setup local dev env & ws](https://angular.io/guide/setup-local)  
[Angular Material](https://material.angular.io/)  
HTML - hypertext markup language  
CSS - cascading style sheets  
[HTML Element Reference](https://www.w3schools.com/tags/default.asp)  
[JavaScript and HTML DOM Reference](https://www.w3schools.com/jsref/default.asp)  
[JavaScript Reserved Words](https://www.w3schools.com/js/js_reserved.asp)  
[JS examples](https://www.w3schools.com/js/js_examples.asp)  
[JS exercises](https://www.w3schools.com/js/exercise_js.asp?filename=exercise_js_variables1)  

## Plan for 14.08.2020
- Headings
- Paragraphs
- Styles
- Formatting
- Links
- Images
- Tables
- Lists
- and so on...
