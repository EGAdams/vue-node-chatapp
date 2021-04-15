/*
 * interface ArrayPopulator ( kind of an interface i guess.  need typescript, no time... )
 *
 * array[] populateArray();
 *
 */ 

 function ArrayPopulator( type, source ) {

     this.populator = type;

     this.setPopulator = function( newPopulatorType ) {
         this.populator = newPopulatorType;
     }

     this.populateArray = function() {
         var newArray = this.populator.populateArray( source );
         return newArray;
     }

 }

module.exports = ArrayPopulator;