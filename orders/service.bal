import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
    label: "orders",
    id: "orders-5074e90c-1acf-4120-a5b2-8a576fd87f02"
}
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greetin(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}
