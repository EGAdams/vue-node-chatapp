/*
 * Rule.js
 */

function Rule( numberArg ) {  
    this.id                 = numberArg;
    this.name               = "";
    this.description        = "";  
    this.users              = "";
    this.passFail           = "";
    this.active             = 0;
    this.rawData            = "";
    this.dateAdded          = "";
    this.timeAdded          = "";
    this.alertsSinceAdded   = 0;
    this.onlyNewData        = 0;
}  

module.exports = Rule;
