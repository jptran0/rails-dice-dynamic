Rails.application.routes.draw do
  get("/", controller: "dice", action: "index")

  get("/dice/:amount/:sides", controller: "dice", action: "roll")

end
