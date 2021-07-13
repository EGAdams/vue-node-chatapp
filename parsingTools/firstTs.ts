export {};  // exports as a module so that it doesn't "compete with eachother"

function welcomePerson( person: Person ): string {
    console.log( `Hey ${person.firstName} ${ person.lastName }` );
    return `Hey ${person.firstName} ${ person.lastName }`;
}

const james = {
    firstName: "James",
    lastName: "Quick"
};

welcomePerson( james );

interface Person {
    firstName: string;
    lastName: string;
}
