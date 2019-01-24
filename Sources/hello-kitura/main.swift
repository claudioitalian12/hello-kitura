import Kitura
import HeliumLogger

HeliumLogger.use()


let route = Router()

route.get("customer"){ request, response, next in
    
    let customer = Customer(firstName: "John", lastName: "Doe")
    
    response.send(json: customer.toDictionary())
    next()
    
}

route.get("/"){ request,response, next in
    
    response.send("Hello World!")
    next()

}

Kitura.addHTTPServer(onPort: 8080, with: route)
Kitura.run()
