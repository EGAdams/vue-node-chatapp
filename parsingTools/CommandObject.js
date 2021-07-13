


class CommandObject {

    constructor( commmandObjectArg ) {
        this.executable         = commmandObjectArg.executable;
        this.args               = commmandObjectArg.args;
        this.description        = commmandObjectArg.description;
        this.targetMachine      = commmandObjectArg.targetMachine;
        this.CommandObject      = commmandObjectArg.CommandObject;
        this.output             = commmandObjectArg.output;
        this.status             = commmandObjectArg.status;
        this.regex_map_filename = commmandObjectArg.regex_map_filename;
        this.outputProcessor    = commmandObjectArg.outputProcessor;
        this.processedOutput    = commmandObjectArg.processedOutput;
    }

    execute() {
        
    }

}